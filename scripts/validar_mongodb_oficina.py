'''Teste autoral de operações equivalentes ao laboratório 02, via PyMongo.
Defina SCTEC_MONGO_URI explicitamente para servidor de treino autorizado.
Não testa mongosh ou GUI. Cria e remove apenas uma base exclusiva.
'''
import os
from uuid import uuid4
from pymongo import MongoClient
c=MongoClient(os.environ['SCTEC_MONGO_URI'],serverSelectionTimeoutMS=5000)
name='sctec_oficina_'+uuid4().hex
assert name not in c.list_database_names()
p=c[name].pedidos
try:
 p.insert_many([{'_id':81,'cliente':{'estado':'SC','nome':'Rui'},'status':'entregue','itens':[{'sku':'M1','qtd':1,'centavos':1200},{'sku':'M2','qtd':4,'centavos':500}]},{'_id':82,'cliente':{'estado':'PR','nome':'Nina'},'status':'entregue','itens':[{'sku':'M1','qtd':3,'centavos':1200}]},{'_id':83,'cliente':{'estado':'SC','nome':'Eva'},'status':'aberto','itens':[]}])
 assert p.find_one({'_id':81})['cliente']['nome']=='Rui'
 assert list(p.find({'status':'entregue','cliente.estado':'SC'},{'_id':1,'status':1,'cliente.nome':1}).sort('_id',1).limit(2))==[{'_id':81,'cliente':{'nome':'Rui'},'status':'entregue'}]
 assert p.count_documents({'status':'entregue'})==2
 assert [x['_id'] for x in p.find({'itens.sku':'M1','itens.qtd':{'$gte':2}}).sort('_id',1)]==[81,82]
 assert [x['_id'] for x in p.find({'itens':{'$elemMatch':{'sku':'M1','qtd':{'$gte':2}}}})]==[82]
 r=p.update_one({'_id':83},{'$set':{'revisado':True}})
 assert (r.matched_count,r.modified_count)==(1,1)
 assert p.find_one({'_id':83})['revisado']
 assert {x['_id']:x['pedidos'] for x in p.aggregate([{'$group':{'_id':'$cliente.estado','pedidos':{'$sum':1}}}])}=={'SC':2,'PR':1}
 assert list(p.aggregate([{'$match':{'status':'entregue'}},{'$unwind':'$itens'},{'$count':'linhas'}]))==[{'linhas':3}]
 assert list(p.aggregate([{'$match':{'status':'entregue'}},{'$unwind':'$itens'},{'$group':{'_id':None,'total':{'$sum':{'$multiply':['$itens.qtd','$itens.centavos']}}}}]))==[{'_id':None,'total':6800}]
 assert list(p.aggregate([{'$unwind':{'path':'$itens','preserveNullAndEmptyArrays':True}},{'$count':'linhas'}]))==[{'linhas':4}]
 print('MongoDB PASS: 11 verificacoes, versao',c.server_info()['version'])
finally:
 c.drop_database(name)
 assert name not in c.list_database_names()
 c.close()
 print('Base temporaria removida')
