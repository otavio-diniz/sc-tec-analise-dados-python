# Revisão dos Guias Vivos 05/06 — SQL/PostgreSQL e NoSQL/MongoDB

**SC TEC T8 · MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO, NÃO OFICIAL · RASCUNHO.** Este material está na ramificação de revisão, não foi promovido à versão estável v1.1.1 da biblioteca.

## Percurso pareado — Colab e VS Code

| Eixo | Guia Colab | Guia VS Code | Caderno Colab | Caderno VS Code |
|---|---|---|---|---|
| 05 — SQL/PostgreSQL | [Guia](../notebooks/colab/05_sql_postgresql.ipynb) | [Guia](../notebooks/vscode/05_sql_postgresql.ipynb) | [Caderno](../exercicios/colab/05_sql_postgresql_exercicios.ipynb) | [Caderno](../exercicios/vscode/05_sql_postgresql_exercicios.ipynb) |
| 06 — MongoDB/NoSQL | [Guia](../notebooks/colab/06_nosql_mongodb.ipynb) | [Guia](../notebooks/vscode/06_nosql_mongodb.ipynb) | [Caderno](../exercicios/colab/06_nosql_mongodb_exercicios.ipynb) | [Caderno](../exercicios/vscode/06_nosql_mongodb_exercicios.ipynb) |

Há **8 checkpoints por Guia** e **24 exercícios sintéticos por Caderno**, com tentativa e solução comentada posterior.

## Comece aqui, sem conhecer bancos

1. [Fontes oficiais e downloads](ambientacao/fontes-oficiais-bancos.md) — versões, interfaces, contas, segurança e linguagem.
2. [Primeiro acesso PostgreSQL + pgAdmin](ambientacao/primeiro-acesso-postgresql.md) — servidor, registro de conexão, Query Tool e SQL.
3. [Primeiro acesso MongoDB + Compass + mongosh](ambientacao/primeiro-acesso-mongodb.md) — banco, conexão, documento, filtros e shell JavaScript.
4. [Biblioteca Viva — suplemento de bancos](biblioteca-viva-bancos.md) — conceitos e armadilhas.

**Linguagens:** PostgreSQL usa SQL; o mongosh usa sintaxe JavaScript, que não é Java; Python/Java são linguagens de integração por drivers, não o idioma obrigatório das GUIs.

## Laboratórios autorais mínimos

PostgreSQL: [carga fictícia](../labs/postgresql/00_dados_sinteticos.sql) e [consultas](../labs/postgresql/01_consultas_e_relatorios.sql).

MongoDB: [documentos fictícios](../labs/mongodb/00_dados_sinteticos.js) e [pipeline](../labs/mongodb/01_consultas_e_agregacao.js).

**Notebooks Python:** SQL é ensinado com SQLite na memória como COMPLEMENTO, não com PostgreSQL conectado. MongoDB é ensinado inicialmente com dicionários Python, não com servidor Mongo conectado. Scripts .sql/.js devem ser executados somente em banco de TREINO AUTORIZADO com conexão e credenciais geridas legitimamente.

## Validação efetivamente realizada — 23/11/2026

- Ramificação clonada em ambiente autorizado; Python 3.14.10, sem instalações, sem conexão aos bancos.
- **8 notebooks** JSON/Jupyter, **8 checkpoints** por Guia/Caderno, paridade das células Colab/VS Code além do cabeçalho operacional: PASS.
- **104 células Python** (4 Guias × 9 e 4 Cadernos × 17) executadas sequencialmente no clone com 0 exceções/asserções falhas. Células usam Python stdlib, SQLite em memória ou dicionários, NÃO motor PostgreSQL/MongoDB.
- **2 scripts mongosh JavaScript** examinados por `node --check` com exit 0. É sintaxe JavaScript, NÃO homologação da API/servidor MongoDB.
- **2 scripts PostgreSQL** conferidos textualmente, NÃO executados no PostgreSQL.
- Saídas de notebook não foram pré-gravadas; conjuntos de dados foram inventados e não contêm informações do mini-projeto, da instrutora ou de candidatos.

**Ainda não comprovados:** execução real contra PostgreSQL/Compass/mongosh, paridade de resultados dos scripts nos dois bancos, testes em sistema/dispositivo distinto, homologação da instrutora e transformação dos arquivos .ipynb em artefatos Colab canônicos no Drive. Os Google Docs de revisão em Drive são material editorial, NÃO notebooks executáveis.

## Integridade acadêmica e critérios de promoção

A transcrição confirma conteúdo SQL avançado da aula de 19/11, divergente do planejamento Python/psycopg/ORM nos slides. Não afirmar que integração Python–PostgreSQL foi realizada naquela aula. Materiais de terceiros continuam no acervo privado. O mini-projeto da Semana 07 é [referência externa](projetos/semana-07-mini-projeto.md), sem fusão de histórico.

**Decisão:** manter tudo nesta ramificação até completar revisão pedagógica e evidências necessárias. Existência, teste de simulação e publicação estável são etapas distintas.
