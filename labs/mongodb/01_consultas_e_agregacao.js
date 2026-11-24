// SC TEC T8 | MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO | GUIA 06
// Executor: mongosh após 00_dados_sinteticos.js num servidor AUTORIZADO.
// Operações equivalentes testadas em MongoDB real; este arquivo ainda não foi executado literalmente no mongosh.
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

// AMPLIAÇÃO AUTORAL — aulas de MongoDB 05/06 e 10/11: projeção, sort/limit/countDocuments.
print("Pedidos totais (documentos, NÃO itens):");
printjson(treino.pedidos_treino.countDocuments({}));
print("Consulta projetada, ordenada e limitada:");
printjson(treino.pedidos_treino.find(
  {"cliente.estado": {$in: ["SP","RJ"]}},
  {_id: 1, "cliente.nome": 1}
).sort({_id: 1}).limit(5).toArray());
// Exemplo de pipeline com $match antes de $unwind, preservando o recorte explícito.
printjson(treino.pedidos_treino.aggregate([
  {$match: {"cliente.estado": {$in: ["SP","RJ"]}}},
  {$unwind: "$itens"},
  {$group: {_id: "$_id", unidades: {$sum: "$itens.qtd"}}},
  {$sort: {_id: 1}}
]).toArray());
// ATENÇÃO: este arquivo foi validado com node --check; operações equivalentes
// foram exercitadas no servidor MongoDB real em base TEMPORÁRIA por outro cliente.
// A execução LITERAL deste arquivo via mongosh continua não comprovada.
