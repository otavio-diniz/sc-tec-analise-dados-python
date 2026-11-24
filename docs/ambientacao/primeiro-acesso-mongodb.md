# MongoDB, Compass e mongosh do zero — pratique no banco real

Material didático sintético, não oficial. MongoDB Community é o **servidor**; Compass é a **interface gráfica**; mongosh é o shell de sintaxe JavaScript. Python/Colab é opção de simulação no Guia 06, não cliente obrigatório. Atlas é alternativa em nuvem, não precisa criar conta para treino local. Passos de interface baseados no manual oficial, sujeitos a diferenças de versão. Use somente servidor autorizado e bases dedicadas de treino.

## 1. Preparar o ambiente e os arquivos

1. [Baixe e extraia o repositório](comece-aqui.md#1-obtenha-uma-cópia-dos-arquivos). Localize `labs/mongodb`, com scripts .js, e `labs/mongodb/dados_sinteticos`, com JSON para o Compass.
2. Se não tiver servidor, consulte [MongoDB Community Server](https://www.mongodb.com/try/download/community) e [instalação Windows](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-windows/). Em instalação autorizada, escolha versão e sistema compatíveis, instalador MSI no Windows, configuração de serviço local conforme manual (não altere serviço já existente), diretórios de dados/log e opção Compass se oferecida. Se não vier junto, [baixe Compass](https://www.mongodb.com/try/download/compass). Não abra porta externa ou desative autenticação. Para terminal opcional, [mongosh](https://www.mongodb.com/docs/mongodb-shell/install/) é instalado separadamente.
3. No menu Iniciar, abra **MongoDB Compass**. Clique **Add New Connection**. Em URI, informe a string do ambiente de treino autorizado (exemplo local `mongodb://127.0.0.1:27017` se esse servidor/porta existirem). Configure autenticação/TLS de acordo com o ambiente, sem expor senha. Clique **Connect**. Se não conectar, pare e verifique servidor/host/porta/autenticação.

[Manual de conexão Compass](https://www.mongodb.com/docs/compass/connect/).

## 2. Criar o banco e as coleções — antes de consultar

1. Na conexão autorizada, na barra lateral selecione **Databases**. Clique **Create Database** (ou botão + da conexão). Database Name = `treino_sctec_mongo`; Collection Name = `clientes_treino`; clique **Create Database**.
2. Se esse banco já existir com dados que você não criou, não o reutilize. Escolha um nome novo para esta prática gráfica (os scripts JS usam o nome fixo treino_sctec_mongo; execute-os somente em ambiente próprio de treino com esse banco reservado).
3. Abra o banco recém-criado → **Create Collection**. Escreva `pedidos_treino` e confirme. O banco contém duas coleções vazias.
4. Se a versão estiver em modo somente leitura, peça acesso autorizado a banco de treino; não tente contornar.

[Manual de bancos](https://www.mongodb.com/docs/compass/databases/) · [coleções](https://www.mongodb.com/docs/compass/collections/).

## 3. Importar os dados sintéticos diretamente no Compass

1. Selecione clientes_treino → aba **Documents** → **Add Data → Import JSON or CSV file**. Escolha o [clientes_treino.json](../../labs/mongodb/dados_sinteticos/clientes_treino.json) da pasta extraída. Selecione JSON e clique Import. Espere sucesso; confira 3 documentos (Lia, Raul, Bia).
2. Repita para pedidos_treino com [pedidos_treino.json](../../labs/mongodb/dados_sinteticos/pedidos_treino.json). Espere 2 documentos, IDs 101 e 102. Os arquivos são arrays JSON com os mesmos registros autorais do laboratório 00, não são o script JavaScript. Não importe o .js como JSON.
3. Expanda o campo cliente e o array itens nos documentos: pedido 101 contém P01/P02; pedido 102 contém P01. Confira números e textos. Não reimporte em coleção preenchida, pois _id é único. Não apague documentos desconhecidos para corrigir duplicação.

[Manual oficial de importação](https://www.mongodb.com/pt-br/docs/compass/import-export/).

## 4. Primeira consulta visual — Documents

Abra pedidos_treino. Na barra **Filter**, cole apenas o objeto abaixo (não escreva db.find no campo). Clique **Find** ou **Apply**, conforme versão.

```json
{"cliente.estado":"SP"}
```

Esperado: um documento, pedido 101, com **os dois itens** P01 e P02. Limpe o filtro ou use {} para ver os dois pedidos. Abra **Options** para Project/Sort/Limit, quando disponíveis.

| Campo Filter | Resultado esperado |
|---|---|
| {} | 2 documentos |
| {"itens.produto":"P01"} | pedidos 101 e 102 |
| {"itens":{"$elemMatch":{"produto":"P01","qtd":{"$gte":3}}}} | pedido 102 |

No campo **Project** (ou Projection), use {"_id":1,"cliente.nome":1}; **Sort** = {"_id":1}; **Limit** = 5. Volte a Filter {} e execute: espere os dois IDs com os nomes. Projeção muda o resultado exibido, não o documento armazenado. Remova a projeção para voltar a visualizar os itens.

[Manual de filtros](https://www.mongodb.com/docs/compass/query/filter/).

## 5. Primeira agregação gráfica — Aggregations

1. Ainda em pedidos_treino, abra **Aggregations**. Crie um pipeline novo. Em versões com **Text View Mode**, cole o array completo:
```json
[
  {"$unwind":"$itens"},
  {"$group":{"_id":"$_id","unidades":{"$sum":"$itens.qtd"}}},
  {"$sort":{"_id":1}}
]
```
2. Se estiver no modo de estágios, clique Add Stage, escolha $unwind e informe "$itens"; adicione $group com {"_id":"$_id","unidades":{"$sum":"$itens.qtd"}}; adicione $sort com {"_id":1}. Clique **Run**. Resultado: 101 → 3 unidades, 102 → 3 unidades. O array é desdobrado; duas vendas/documentos não significam duas linhas de item.
3. Depois, use o pipeline do laboratório 01 para valor em centavos (4000 e 1350), mantendo as mesmas etapas. Não use $out/$merge no treino de leitura.

[Manual de criação de pipelines](https://www.mongodb.com/docs/compass/create-agg-pipeline/).

## 6. Atualizar um documento com controle

No Documents, limpe a projeção e filtre {"_id":101}. Use o ícone de edição (lápis/Edit Document), acrescente o campo booleano revisado com true, sem alterar _id ou itens, e salve (Update). Execute novamente o filtro {"_id":101}: confirme revisado:true. Consulte {"revisado":true}: espere somente 101. A alteração fica na base própria de treino; não é parte da base original. Se quiser restaurar, edite esse mesmo documento e remova apenas o campo revisado criado por você. Não use Delete/Drop. Se a interface não permitir edição, não prossiga sem permissão. No shell, o equivalente é `db.pedidos_treino.updateOne({_id:101},{$set:{revisado:true}})` após selecionar o banco de treino; matchedCount/modifiedCount devem ser interpretados separadamente.

## 7. Usar os arquivos .js reais — mongosh (alternativa à carga gráfica)

Se preferir praticar por comandos, abra um terminal na raiz extraída. Use o URI local autorizado abaixo **somente se ele corresponder ao servidor de treino**. Caso haja autenticação, use os mecanismos de prompt/credenciais previstos no manual; não insira senha na linha de comando ou no histórico.

```powershell
mongosh "mongodb://127.0.0.1:27017"
```

Dentro do shell, confirme a conexão e execute:
```javascript
db.getName()
use treino_sctec_mongo
db.getName()
db.pedidos_treino.countDocuments({})
```
O resultado pode ser 0 antes da carga. Saia com exit. Para executar os scripts inteiros, use comandos **separados no terminal**, a partir da raiz, e confira a saída após cada um:
```powershell
mongosh "mongodb://127.0.0.1:27017" --file labs/mongodb/00_dados_sinteticos.js
mongosh "mongodb://127.0.0.1:27017" --file labs/mongodb/01_consultas_e_agregacao.js
mongosh "mongodb://127.0.0.1:27017" --file labs/mongodb/02_ciclo_documental.js
```

- 00: carga alternativa à importação JSON. Faz upserts em treino_sctec_mongo (3 clientes, 2 pedidos); não corrige documentos preexistentes. Execute somente se esse nome estiver reservado ao seu treino, sem colisão com base alheia.
- 01: consultas/relatórios; depende dos dados 00 ou dos JSONs importados no banco de mesmo nome. Esperado: pedidos 101 e 102, 3 unidades cada e valores 4000/1350 centavos.
- 02: oficina distinta, cria banco aleatório próprio e o remove no final; inclui filtro independente vs elemMatch, $set e agregações. Resultado esperado: IDs 81/82 contra 82, 2 entregues, 3 itens, 6800 centavos. Leia o script inteiro antes de executar; requer permissão de criar/remover apenas essa base temporária.

O Compass também oferece shell embutido em versões compatíveis. Use-o para comandos interativos curtos; para executar arquivo .js por caminho, prefira o mongosh externo conforme manual. Não cole comandos JavaScript no campo Filter, nem JSON isolado numa célula Python esperando consulta ao servidor.

[Manual mongosh — arquivos e opções](https://www.mongodb.com/docs/mongodb-shell/write-scripts/).

## 8. Diagnóstico e continuidade

Connection refused: verifique servidor, porta e URI. Authentication failed: confirme usuário e método autorizado. E11000: _id duplicado, não reimporte automaticamente. Filtro vazio: confirme banco/coleção, campo e tipo. Compass mostra mais itens que o filtro: consulta seleciona documentos completos; elemMatch exige condições no mesmo item. Pipeline aumenta linhas: unwind muda a granularidade.

[Guia 06](../../notebooks/colab/06_nosql_mongodb.ipynb) · [Caderno 06](../../exercicios/colab/06_nosql_mongodb_exercicios.ipynb) · [Percurso das semanas](../PERCURSO_DAS_SEMANAS.md). As operações e dados foram verificados no motor MongoDB via driver; a execução literal dos scripts no mongosh e os cliques no Compass não foram homologados. [Evidências](../VALIDACAO_BANCOS_2026-11-24.md).
