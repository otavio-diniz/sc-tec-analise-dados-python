// SC TEC T8 | MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO | GUIA 06
// Executor: mongosh em servidor MongoDB de treino AUTORIZADO; JavaScript, NÃO Java/Python.
// NÃO executar em banco da instrutora, produção nem publicar URI com senha.
// Confirme a conexão antes de iniciar. Uma interface Compass aberta não garante servidor.
const treino = db.getSiblingDB("treino_sctec_mongo");
[
 {_id:1,nome:"Lia",estado:"SP"}, {_id:2,nome:"Raul",estado:"RJ"}, {_id:3,nome:"Bia",estado:"MG"}
].forEach(x=>treino.clientes_treino.updateOne({_id:x._id},{$setOnInsert:x},{upsert:true}));
[
 {_id:101,cliente:{id:1,nome:"Lia",estado:"SP"},itens:[
  {produto:"P01",qtd:2,centavos:1000,desconto:0},
  {produto:"P02",qtd:1,centavos:2000,desconto:0}]},
 {_id:102,cliente:{id:2,nome:"Raul",estado:"RJ"},itens:[
  {produto:"P01",qtd:3,centavos:500,desconto:10}]}
].forEach(x=>treino.pedidos_treino.updateOne({_id:x._id},{$setOnInsert:x},{upsert:true}));
print("Coleções de treino; conferir valores antes de interpretar.");
printjson({clientes:treino.clientes_treino.countDocuments({}),
           pedidos:treino.pedidos_treino.countDocuments({})});
// Em banco limpo, previsão manual: 3 clientes e 2 pedidos.
// $setOnInsert não corrige um documento preexistente com os mesmos IDs.
