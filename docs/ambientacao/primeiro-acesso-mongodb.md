# Primeiro acesso ao MongoDB, Compass e mongosh — passo a passo

**MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO — SC TEC T8 — GUIA 06.** Não foi instalado nenhum software, criado usuário, cadastrado Atlas ou conectado servidor nesta etapa.

## 1. Identifique componentes e linguagens
- **MongoDB Community Server:** banco documental; organiza databases, collections e documentos BSON.
- **Compass:** interface gráfica de consulta e administração.
- **mongosh:** shell com comandos de sintaxe **JavaScript**, que **não é Java nem Python**.
- **Python e Java:** linguagens com drivers opcionais para integração; não são pré-requisitos para usar Compass/mongosh.
- **MongoDB Atlas:** alternativa gerenciada, opcional, com conta/termos próprios.

## 2. Verifique o ambiente existente
Descubra se há servidor autorizado, porta, autenticação, banco de treino, Compass e mongosh. Abrir Compass sem servidor não significa ter banco funcional. URI `mongodb://127.0.0.1:27017` é exemplo local, não garantia de conexão.

## 3. Onde baixar
1. [MongoDB Community Server](https://www.mongodb.com/try/download/community) e [manual oficial de Windows v8.0](https://www.mongodb.com/docs/v8.0/tutorial/install-mongodb-on-windows/) se Windows e versão compatível.
2. [Compass](https://www.mongodb.com/try/download/compass) pode ser oferecido no instalador Community; confira componentes.
3. [mongosh](https://www.mongodb.com/try/download/shell) requer download/instalação separados.
4. [MongoDB Atlas Free](https://www.mongodb.com/docs/atlas/tutorial/deploy-free-tier-cluster/) somente como alternativa com conta, termos, projeto/cluster, credenciais e rede. Não é necessário para o laboratório local.

**Instalação de serviço, configuração de rede e credenciais dependem de autorização técnica. Não abrir portas externas nem desativar proteções para facilitar um treino.**

## 4. Cadastro de conexão no Compass
1. Abrir Compass e localizar `Add New Connection`.
2. Informar `connection string` do ambiente permitido; ex.: `mongodb://127.0.0.1:27017` apenas se servidor local existe.
3. Confirmar usuário, método de autenticação, TLS/rede quando aplicáveis. **Nunca publicar URI com senha ou salvar segredo no notebook.**
4. Selecionar Connect e verificar banco e coleções apresentados.
5. Navegar até uma coleção **inteiramente fictícia**, conhecer `Documents`, campo `Filter` e possibilidades de projeção.
6. Testar inicialmente uma leitura como `{"cliente.estado":"SP"}`. O resultado pode preservar todos os itens do documento, mesmo que só um elemento do array tenha satisfeito um filtro.

[Conexão Compass — manual](https://www.mongodb.com/docs/compass/connect/).

## 5. Primeiro contato com mongosh
Após conectar a servidor de TREINO autorizado, comandos JavaScript podem selecionar o banco e ler:

```javascript
const treino = db.getSiblingDB("treino_sctec_mongo");
treino.getName();
treino.pedidos_treino.find({});
```

`find({})` vazio não prova que o script de carga foi executado. O arquivo [00_dados_sinteticos.js](../../labs/mongodb/00_dados_sinteticos.js) contém **upserts que modificam banco**; revisar antes de qualquer uso. O [01_consultas_e_agregacao.js](../../labs/mongodb/01_consultas_e_agregacao.js) apresenta find, elemMatch, unwind e group.

## 6. Dados fictícios e arrays
No exemplo do Guia, pedido 101 tem itens P01 e P02; pedido 102 contém P01. Um filtro `{"itens.produto":"P01"}` pode recuperar **dois documentos completos**. Para testar várias condições **no mesmo item**, usar `$elemMatch`; para expandir itens em estágio de agregação, `$unwind`. Não inferir que a seleção de documento remove elementos do array.

**Valores didáticos:** centavos por pedido = 4000 e 1350. Não chamar valores brutos de lucro ou de dinheiro recebido. O [Guia Python 06](../../notebooks/colab/06_nosql_mongodb.ipynb) usa listas/dicionários Python como simulação, **não** é uma execução do servidor MongoDB.

## 7. Erros frequentes
- `ECONNREFUSED`: serviço/host/porta indisponível.
- `Authentication failed`: usuário e método autorizados.
- `E11000 duplicate key`: duplicação de campo `_id`.
- Consulta encontra documento com P02 também: filtro selecionou documento, não elementos isolados.
- Após `$unwind` aumentou o número de registros: a granularidade mudou.
- Falha de sintaxe no notebook Python: comandos mongosh são JavaScript, não Python.

**Checkpoints:** COMPREENDER banco/coleção/documento; EXECUTAR consultas em servidor autorizado; DIAGNOSTICAR erros de conexão/filtro. Não usar drop/delete para “consertar” sem compreender efeitos.