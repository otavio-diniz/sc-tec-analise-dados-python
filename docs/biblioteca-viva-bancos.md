# Biblioteca Viva — suplemento SQL e MongoDB (eixos 05/06)

**SC TEC T8 — MATERIAL DIDÁTICO AUTORAL FICTÍCIO/SINTÉTICO. SUPLEMENTO PUBLICADO PARA ESTUDO EM PRÉVIA, AINDA NÃO INCORPORADO AOS NOTEBOOKS CANÔNICOS DA BIBLIOTECA.** Complementa a Biblioteca Viva Python/Pandas/NumPy sem substituir seus notebooks atuais.

## Fundamentos de linguagem e ambiente

| Termo | O que é e quando aparece | Armadilha / conexão |
|---|---|---|
| Servidor | Programa que guarda/consulta dados, como PostgreSQL ou MongoDB | Abrir um editor não inicia o servidor |
| Cliente | Programa que se conecta ao servidor: pgAdmin, Compass, mongosh | Cliente não substitui servidor |
| PostgreSQL | Banco relacional consultado por SQL | pgAdmin é cliente, não linguagem |
| SQL | Linguagem de consulta e transformação relacional | Dialetos variam; SQLite não é PostgreSQL |
| pgAdmin / Query Tool | GUI/console de SQL | Conferir banco conectado antes de executar |
| MongoDB Community | Servidor de documentos BSON | Não é programa Python nem Java |
| Compass | GUI para explorar documentos MongoDB | Não é o banco |
| mongosh | Shell para operações MongoDB em sintaxe JavaScript | JavaScript é diferente de Java |
| Python | Linguagem dos notebooks Colab/VS Code | Driver específico exigido para acessar servidor |
| Java | Linguagem distinta, com driver opcional | Não equivale a JavaScript |
| psycopg / SQLAlchemy | Driver Python / camada de acesso ao PostgreSQL | Aparecem em slides M1S11; não comprovados como prática na aula 19/11 |
| PyMongo | Driver MongoDB para Python | Não necessário para ler dicionários fictícios em notebook |
| Host/porta | Endereço e ponto de serviço do servidor | 5432/27017 são padrões comuns, não configurações verificadas |
| URI | Identificador de conexão, possivelmente com credenciais | Nunca publicar senha no código |
| Colab | Notebook Python remoto | localhost do Colab não é o computador pessoal |
| VS Code | Editor de notebooks e scripts | Exige kernel e executores adequados |

## Relacional e relatórios

| Termo | Como ler / usar | Erro comum |
|---|---|---|
| Tabela, linha, coluna | Conjunto de entidades e atributos | Linha de item ≠ pedido |
| PK / FK | Chave única e referência entre tabelas | Nome semelhante não garante relação |
| Cardinalidade 1:N | Um pedido, vários itens | JOIN multiplica linhas |
| INNER JOIN | Apenas combinações com par | Elimina registros sem correspondência |
| LEFT JOIN | Preserva linhas da tabela da esquerda | WHERE pode eliminar ausências |
| FULL OUTER JOIN | Preserva ausências de ambos os lados | Validar no PostgreSQL real |
| COUNT(DISTINCT) | Conta identificadores diferentes | COUNT(*) conta linhas do resultado |
| GROUP BY / HAVING | Agrupa linhas / filtra grupos | WHERE acontece antes de agrupar |
| Subconsulta / IN | Usa valor, conjunto ou tabela derivada | Pedido acima do limite ≠ soma do cliente acima |
| CTE / WITH | Nomeia resultado intermediário | Não garante maior velocidade |
| DATE_TRUNC | Agrupa por período PostgreSQL | Mês incompleto não é comparável a mês inteiro |
| NUMERIC | Decimal para cálculo monetário exato | Evitar imprecisão desnecessária |
| BEGIN/ROLLBACK | Controle de transação | Não torna toda mudança automaticamente segura |

## Documental, arrays e consulta

| Termo | Como ler / usar | Erro comum |
|---|---|---|
| Documento / coleção | Dados BSON aninhados / agrupamento | Documento não é um arquivo JSON qualquer |
| JSON / BSON | Formato textual / formato nativo MongoDB | Python None não é JSON null |
| _id | Identificador único do documento | Duplicação gera conflito |
| Embedding / referência | Dados aninhados / IDs que apontam a outra coleção | Redundância ou dados ausentes |
| find / projeção | Filtra documentos / seleciona campos | Filtro de array devolve documento inteiro |
| $elemMatch | Critérios do mesmo elemento do array | Evitar combinar atributos de itens diferentes |
| $unwind | Expande array no pipeline | Muda granularidade |
| $group | Consolida elementos do pipeline | Chave de agrupamento errada distorce valor |
| countDocuments | Conta documentos | Não conta itens dentro do array |
| Upsert | Atualiza ou insere conforme filtro | Em banco já populado, dados podem divergir |
| Decimal128 | Precisão decimal do MongoDB | Exemplo de estudo usa centavos inteiros |

## Princípios transversais

**Fonte de aula ≠ slide planejado ≠ complemento autoral.** O confronto das Semanas 08–11 está no registro interno do curso. **Notebook Python executado ≠ consulta PostgreSQL/MongoDB executada.** Os dois conjuntos CSV comerciais da professora são distintos e não entram neste repositório. Os exercícios de treino são fictícios e não substituem avaliações do estudante.

**Guia de domínio:** COMPREENDER em palavras próprias, EXECUTAR em motor apropriado quando disponível e DIAGNOSTICAR erro de ferramenta, sintaxe, dados e interpretação.

[Guia 05](../notebooks/colab/05_sql_postgresql.ipynb) · [Guia 06](../notebooks/colab/06_nosql_mongodb.ipynb) · [Fontes oficiais](ambientacao/fontes-oficiais-bancos.md).
