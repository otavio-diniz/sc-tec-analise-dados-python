// SC TEC T8 | MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO | GUIA 06
// Executor: mongosh após 00_dados_sinteticos.js num servidor AUTORIZADO.
// Não executado ou validado num servidor real neste ciclo.
const treino = db.getSiblingDB("treino_sctec_mongo");
printjson(treino.pedidos_treino.find({"cliente.estado":"SP"}).toArray());
printjson(treino.pedidos_treino.find({"itens.produto":"P01"}).toArray());
// $elemMatch: o MESMO elemento satisfaz produto e quantidade.
printjson(treino.pedidos_treino.find(
 {itens:{$elemMatch:{produto:"P01",qtd:{$gte:2}}}}
).toArray());
// $unwind transforma cada item de array em elemento do pipeline.
printjson(treino.pedidos_treino.aggregate([
 {$unwind:"$itens"},
 {$group:{_id:"$_id",unidades:{$sum:"$itens.qtd"}}},
 {$sort:{_id:1}}
]).toArray());
// Valor didático em centavos; verificar política monetária em uso real.
printjson(treino.pedidos_treino.aggregate([
 {$unwind:"$itens"},
 {$group:{_id:"$_id",total_centavos:{$sum:{$multiply:[
   "$itens.qtd","$itens.centavos",
   {$subtract:[1,{$divide:["$itens.desconto",100]}]}
 ]}}}},
 {$sort:{_id:1}}
]).toArray());
// Previsão manual (NÃO saída medida): pedidos 101/102 com 4000/1350 centavos,
// 3 unidades em cada pedido; dois documentos possuem P01.
