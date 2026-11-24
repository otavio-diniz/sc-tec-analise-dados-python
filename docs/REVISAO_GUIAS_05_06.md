# Revisão dos Guias Vivos 05/06 — SQL/PostgreSQL e NoSQL/MongoDB

**SC TEC T8 · MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO, NÃO OFICIAL · PRÉVIA PUBLICADA PARA ESTUDO.** Os arquivos são disponibilizados para consulta e melhoria contínua, sem constituir uma nova baseline homologada. A versão estável anterior v1.1.1 dos eixos 01–04 permanece preservada.

## Escopo real das aulas e uso por iniciantes

A cobertura não se limita aos dois bancos. **Semana 08:** HTML, scraping responsável, BeautifulSoup/requests, pipeline ETL e SQLite vieram antes do PostgreSQL. A [Ponte da Semana 08](ambientacao/ponte-semana-08-etl.md) ensina cada etapa e liga ao exercício executável do Guia 05; nenhuma coleta externa é realizada. Em [11 aulas, de 27/10 a 19/11](PERCURSO_SEMANAS_08_A_11.md), cada data é classificada por prática oral versus conteúdo planejado do slide, sem inventar aula de 20/11.

**Normalização:** a oficina 1FN–3FN está no Guia 05 CP2; RIGHT/FULL, UNION ALL, ILIKE, CONCAT/SUBSTRING e a interpretação da granularidade estão no Guia 05 e no laboratório SQL. **MongoDB:** uso do Compass/mongosh, find/projeção, sort/limit/countDocuments, elemMatch e pipeline foi detalhado no Guia 06 e scripts. Os Guias e Cadernos são **simulações didáticas em Python**, com prática real de banco feita separadamente quando autorizada.

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

## Validação efetivamente realizada — 23–24/11/2026

- **8 notebooks** e paridade Colab/VS Code verificados; **106 células Python** de simulação executadas, sem erro ou saída pré-gravada.
- **PostgreSQL 18 real:** ambos os scripts SQL executados em uma instância temporária isolada, com retorno `3|2|3|53.50`. Servidor de teste parado e removido; o serviço PostgreSQL habitual não foi acessado com credenciais.
- **MongoDB real:** dois documentos fictícios inseridos, filtrados e agregados em banco temporário no servidor local, com exclusão confirmada após o teste. Foi utilizado cliente de teste por conexão direta, **não os arquivos JavaScript executados literalmente em mongosh**.
- **JavaScript:** dois arquivos .js passaram em `node --check`, mas a API mongosh/Compass não foi executada diretamente. Não foi instalado software.
- **Limites:** nenhuma homologação de GUI, Google Colab remoto, serviço PostgreSQL habitual ou revisão da instrutora. Esses limites não impedem acesso à prévia, mas impedem alegações de homologação integral.

Evidências e detalhes: [relatório técnico](VALIDACAO_BANCOS_2026-11-24.md). As verificações Python, sem conexão aos bancos, podem ser repetidas com `python scripts/validar_notebooks_05_06.py` e `python scripts/verificar_links_05_06.py`, a partir da raiz do repositório.

## Integridade acadêmica e critérios de promoção

A transcrição confirma conteúdo SQL avançado da aula de 19/11, divergente do planejamento Python/psycopg/ORM nos slides. Não afirmar que integração Python–PostgreSQL foi realizada naquela aula. Materiais de terceiros continuam no acervo privado. O mini-projeto da Semana 07 é [referência externa](projetos/semana-07-mini-projeto.md), sem fusão de histórico.

**Estado editorial:** prévia dos eixos 05/06 publicada para estudo no repositório principal, mantendo a validação pedagógica humana e a execução literal dos scripts MongoDB em mongosh como itens distintos e não comprovados. Publicação não equivale a certificação institucional.

## Oficinas integradas
[SQL: metas e reconciliação](../labs/postgresql/02_metas_e_reconciliacao.sql) · [MongoDB: ciclo documental](../labs/mongodb/02_ciclo_documental.js) · [Teste PyMongo equivalente](../scripts/validar_mongodb_oficina.py) · [Ponte ETL](ambientacao/ponte-semana-08-etl.md).
