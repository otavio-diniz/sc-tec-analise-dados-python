// MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO — use apenas servidor autorizado de treino.
// Banco exclusivo, nome aleatório; não execute em banco de produção.
const nomeTreino = 'sctec_oficina_' + new ObjectId().toHexString();
if (db.getMongo().getDBNames().includes(nomeTreino)) throw new Error('Banco ja existe');
const lab = db.getSiblingDB(nomeTreino);
const col = lab.pedidos;
try {
  col.insertMany([
    {_id:81,cliente:{estado:'SC',nome:'Rui'},status:'entregue',itens:[{sku:'M1',qtd:1,centavos:1200},{sku:'M2',qtd:4,centavos:500}]},
    {_id:82,cliente:{estado:'PR',nome:'Nina'},status:'entregue',itens:[{sku:'M1',qtd:3,centavos:1200}]},
    {_id:83,cliente:{estado:'SC',nome:'Eva'},status:'aberto',itens:[]}
  ]);
  printjson(col.findOne({_id:81}));
  printjson(col.find({status:'entregue','cliente.estado':'SC'},{_id:1,status:1,'cliente.nome':1}).sort({_id:1}).limit(2).toArray());
  printjson(col.countDocuments({status:'entregue'}));
  printjson(col.find({'itens.sku':'M1','itens.qtd':{$gte:2}},{_id:1}).toArray());
  printjson(col.find({itens:{$elemMatch:{sku:'M1',qtd:{$gte:2}}}},{_id:1}).toArray());
  printjson(col.updateOne({_id:83},{$set:{revisado:true}}));
  printjson(col.aggregate([{$group:{_id:'$cliente.estado',pedidos:{$sum:1}}},{$sort:{pedidos:-1,_id:1}}]).toArray());
  printjson(col.aggregate([{$match:{status:'entregue'}},{$unwind:'$itens'},{$count:'linhas'}]).toArray());
  printjson(col.aggregate([{$match:{status:'entregue'}},{$unwind:'$itens'},{$group:{_id:null,total:{$sum:{$multiply:['$itens.qtd','$itens.centavos']}}}}]).toArray());
  printjson(col.aggregate([{$unwind:{path:'$itens',preserveNullAndEmptyArrays:true}},{$count:'linhas'}]).toArray());
} finally { lab.dropDatabase(); }
// Resultado esperado: IDs 81/82 contra 82, 2 entregues, 3 itens, 6800 centavos; 4 linhas preservando vazio.
