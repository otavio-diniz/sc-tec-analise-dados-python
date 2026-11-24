# SC TEC — Análise de Dados com Python | Material Vivo

Aprenda a ler código, transformar dados e interpretar resultados antes de automatizar decisões. Esta biblioteca de estudo progressivo reúne **seis Guias Vivos, seis Cadernos Práticos e uma Biblioteca Viva**, em versões Google Colab e VS Code (26 notebooks de estudo), com exemplos fictícios e soluções comentadas para praticar depois de uma tentativa própria.

**Produção autoral de Otávio Diniz**, elaborada a partir de estudos do curso SC TEC — Análise de Dados com Python, T8. Não é material oficial da instituição ou da docente. Dados, exercícios e laboratórios novos são sintéticos; fontes docentes privadas não são redistribuídas.

## Comece pelo seu objetivo

| Preciso aprender | Caminho |
|---|---|
| Lógica e leitura de código | Guias 01–02: tipos, decisões, laços, funções, módulos e pipelines |
| Preparação e análise de dados | Guias 03–04: Pandas, qualidade, agregação, NumPy e vetorização |
| Dados de páginas web e ETL | Guia/Caderno 02 e oficina HTML → HTTP → CSV/SQLite |
| Bancos relacionais | Guia/Caderno 05: SQL, PostgreSQL, normalização, JOINs, CTE, metas e transações |
| Bancos documentais | Guia/Caderno 06: MongoDB, documentos, filtros, atualização e agregações |
| Revisão rápida | Biblioteca Viva e [glossário de bancos](docs/biblioteca-viva-bancos.md) |

## Percurso das semanas 07–11

A organização respeita dependências de aprendizagem e distingue a sequência oral da agenda dos slides. Veja o [roteiro por aula das semanas 08–11](docs/PERCURSO_SEMANAS_08_A_11.md).

| Semana | Conteúdo e prática |
|---|---|
| 07 · Projeto | [Mini-projeto de análise de varejo](https://github.com/otavio-diniz/Miniprojeto_Otavio_Diniz_T8): exemplo acadêmico independente apresentado no contexto da semana, Python/Pandas, diagnóstico, tratamento, exploração e interpretação. [Contexto e relação com a biblioteca](docs/projetos/semana-07-mini-projeto.md). |
| 08 · 27, 29, 30/10 | HTML, CSS, BeautifulSoup, requests/HTTP, funções/classes, ETL, CSV, SQLite, início de PostgreSQL e pgAdmin. [Ponte ETL](docs/ambientacao/ponte-semana-08-etl.md) + Guias 02/05. |
| 09 · 03, 05, 06/11 | MongoDB, Compass, JSON/BSON, _id, consultas, projeções, arrays, atualizações, pipeline de agregação. Guia 06 e laboratório MongoDB. |
| 10 · 10, 12, 13/11 | Continuação MongoDB, normalização 1FN–3FN, PK/FK/CHECK, DDL/DML, transações, filtros e diagnóstico. Guias 05/06. |
| 11 · 17, 19/11 | JOINs, importação e reconciliação de tabelas comerciais, vendedores/metas, UNION ALL, GROUP BY/HAVING, COUNT DISTINCT, subconsultas, CTE, funções texto e mês parcial. Guia 05 e laboratório SQL. |

O projeto da Semana 07 permanece no repositório próprio: o link não duplica a base nem afirma nota ou aprovação. Python/ORM em banco, planejado no slide da Semana 11, não é tratado como prática oral comprovada; a aula de 20/11 não foi ministrada segundo a informação registrada.

## Acesso aos Guias e Cadernos

| Eixo | Guia — Colab | Guia — VS Code | Caderno — Colab | Caderno — VS Code |
|---|---|---|---|---|
| 01 · Fundamentos | [Abrir](notebooks/colab/01_python_fundamentos.ipynb) | [Abrir](notebooks/vscode/01_python_fundamentos.ipynb) | [Exercícios](exercicios/colab/01_python_fundamentos_exercicios.ipynb) | [Exercícios](exercicios/vscode/01_python_fundamentos_exercicios.ipynb) |
| 02 · Desenvolvimento | [Abrir](notebooks/colab/02_python_desenvolvimento.ipynb) | [Abrir](notebooks/vscode/02_python_desenvolvimento.ipynb) | [Exercícios](exercicios/colab/02_python_desenvolvimento_exercicios.ipynb) | [Exercícios](exercicios/vscode/02_python_desenvolvimento_exercicios.ipynb) |
| 03 · Pandas | [Abrir](notebooks/colab/03_pandas_analise_dados.ipynb) | [Abrir](notebooks/vscode/03_pandas_analise_dados.ipynb) | [Exercícios](exercicios/colab/03_pandas_exercicios.ipynb) | [Exercícios](exercicios/vscode/03_pandas_exercicios.ipynb) |
| 04 · NumPy | [Abrir](notebooks/colab/04_numpy_arrays_calculo.ipynb) | [Abrir](notebooks/vscode/04_numpy_arrays_calculo.ipynb) | [Exercícios](exercicios/colab/04_numpy_arrays_exercicios.ipynb) | [Exercícios](exercicios/vscode/04_numpy_arrays_exercicios.ipynb) |
| 05 · SQL/PostgreSQL · prévia | [Abrir](notebooks/colab/05_sql_postgresql.ipynb) | [Abrir](notebooks/vscode/05_sql_postgresql.ipynb) | [Exercícios](exercicios/colab/05_sql_postgresql_exercicios.ipynb) | [Exercícios](exercicios/vscode/05_sql_postgresql_exercicios.ipynb) |
| 06 · MongoDB/NoSQL · prévia | [Abrir](notebooks/colab/06_nosql_mongodb.ipynb) | [Abrir](notebooks/vscode/06_nosql_mongodb.ipynb) | [Exercícios](exercicios/colab/06_nosql_mongodb_exercicios.ipynb) | [Exercícios](exercicios/vscode/06_nosql_mongodb_exercicios.ipynb) |

**Biblioteca Viva:** [Colab](biblioteca/colab/04_biblioteca_viva_python_pandas.ipynb) · [VS Code](biblioteca/vscode/04_biblioteca_viva_python_pandas.ipynb). Inclui Python, Pandas, NumPy, ETL, SQL, MongoDB e conceitos de qualidade de dados. O nome histórico do arquivo é mantido para não quebrar links.

**Avaliações comentadas, preservadas separadamente:** [M1S02 Colab](avaliacoes/colab/m1s02_avaliacao_comentada.ipynb) · [VS Code](avaliacoes/vscode/m1s02_avaliacao_comentada.ipynb) · [M1S03 Colab](avaliacoes/colab/m1s03_avaliacao_comentada.ipynb) · [VS Code](avaliacoes/vscode/m1s03_avaliacao_comentada.ipynb). Não constituem nova avaliação formal.

## Ferramentas e fontes oficiais

| Ferramenta | Função | Download / documentação |
|---|---|---|
| Python | Linguagem e executor | [Python](https://www.python.org/downloads/) |
| Google Colab | Notebook Python na web | [Colab](https://colab.research.google.com/) |
| VS Code | Editor e notebooks | [VS Code](https://code.visualstudio.com/download) · [Jupyter](https://code.visualstudio.com/docs/datascience/jupyter-notebooks) |
| PostgreSQL | Servidor SQL usado nos laboratórios | [Download](https://www.postgresql.org/download/) |
| pgAdmin | Cliente gráfico PostgreSQL | [Download](https://www.pgadmin.org/download/) · [Windows](https://www.pgadmin.org/download/pgadmin-4-windows/) |
| MongoDB Community | Servidor documental | [Download](https://www.mongodb.com/try/download/community) |
| MongoDB Compass | Cliente gráfico MongoDB | [Download](https://www.mongodb.com/try/download/compass) |
| mongosh | Shell MongoDB, sintaxe JavaScript | [Download](https://www.mongodb.com/try/download/shell) |
| MySQL Community | Servidor relacional alternativo (referência, não executor dos labs) | [Download](https://dev.mysql.com/downloads/mysql/) |
| MySQL Workbench | Cliente gráfico MySQL (referência) | [Download](https://dev.mysql.com/downloads/workbench/) |

[Guia de fontes oficiais](docs/ambientacao/fontes-oficiais-bancos.md) · [PostgreSQL/pgAdmin do zero](docs/ambientacao/primeiro-acesso-postgresql.md) · [MongoDB/Compass do zero](docs/ambientacao/primeiro-acesso-mongodb.md). Não é necessário instalar tudo; SQL é uma linguagem, cada motor tem seu dialeto. MySQL e Workbench são alternativas de consulta, não pré-requisitos. Colab e VS Code não criam conexão com bancos automaticamente.

## Execução e método

Para estudar, abra um Guia no ambiente escolhido, leia o checkpoint, execute o exemplo, preveja e tente o Caderno antes de consultar a solução; volte à Biblioteca quando necessário. O método é **compreender → executar → diagnosticar**, com retomadas em espiral. Veja [método pedagógico](docs/METODO_PEDAGOGICO.md).

Clone o repositório, se preferir trabalhar localmente:

```bash
git clone https://github.com/otavio-diniz/sc-tec-analise-dados-python.git
cd sc-tec-analise-dados-python
```

Use Python e kernel Jupyter disponíveis. Para as oficinas, pandas, numpy, requests e beautifulsoup4 devem estar disponíveis no ambiente; a simulação relacional usa sqlite3 da biblioteca padrão. O laboratório de MongoDB real via Python requer pymongo. O validador estrutural requer nbformat. Consulte a documentação oficial e as permissões do seu ambiente antes de instalar dependências.

### Laboratórios reais

- PostgreSQL: [base sintética](labs/postgresql/00_dados_sinteticos.sql), [consultas](labs/postgresql/01_consultas_e_relatorios.sql) e [metas/reconciliação](labs/postgresql/02_metas_e_reconciliacao.sql), [qualidade e transações](labs/postgresql/03_qualidade_e_transacoes.sql), [importação CSV via psql](labs/postgresql/04_importacao_csv.psql) e [dados fictícios](labs/postgresql/dados_sinteticos/). Execute apenas em banco de treino autorizado, via psql ou Query Tool. O laboratório 02 usa tabelas temporárias e rollback.
- MongoDB: [base sintética](labs/mongodb/00_dados_sinteticos.js), [consultas](labs/mongodb/01_consultas_e_agregacao.js) e [ciclo documental](labs/mongodb/02_ciclo_documental.js). Execute no mongosh de treino; o script 02 cria e remove apenas uma base aleatória. O [teste PyMongo](scripts/validar_mongodb_oficina.py) executa operações equivalentes, não o arquivo JS literal.

Não use bases habituais, credenciais reais em notebooks ou serviços expostos na internet. A oficina HTTP usa resposta controlada sem rede; coleta externa requer permissão e tratamento de erros.

## Estrutura

```text
notebooks/{colab,vscode}/   # 6 Guias em cada ambiente
exercicios/{colab,vscode}/  # 6 Cadernos em cada ambiente
biblioteca/{colab,vscode}/  # Biblioteca Viva em cada ambiente
avaliacoes/{colab,vscode}/  # M1S02 e M1S03, separadas
labs/postgresql/           # SQL real, dados fictícios
labs/mongodb/              # comandos mongosh, dados fictícios
scripts/                   # validação e conferência de links
docs/                      # percurso, ambientação, método e evidências
```

## Validação e limites

O estado atual é uma extensão didática publicada para estudo e revisão. Foram verificadas **120 células Python nos oito notebooks 05/06, sem erros**; a nova oficina ETL usa HTTP controlado, CSV e SQLite; os cinco laboratórios PostgreSQL (incluindo importação de sete CSVs) foram executados em PostgreSQL 18.7 isolado. Onze verificações equivalentes ao ciclo documental passaram no MongoDB 9.0.8 via PyMongo; três scripts JS passaram em verificação de sintaxe. **Eixos 05/06 permanecem prévia pedagógica**, sem homologação docente. As oficinas distinguem simulação Python/SQLite de execução nos motores reais. [Relatório de validação](docs/VALIDACAO_BANCOS_2026-11-24.md).

```bash
python scripts/validar_notebooks_05_06.py
python scripts/verificar_links_05_06.py
```

Os pares Colab/VS Code são equivalentes nos blocos novos; abertura de notebook não comprova execução no runtime remoto. Não se infere presença, nota, certificação ou conclusão institucional. O objetivo é entender conceitos, diagnosticar divergências e interpretar resultados sem copiar a base docente.

## Histórico, fontes e contribuição

A v1.1.1 de 20/10/2026 é a **baseline histórica** dos eixos 01–04 (18 notebooks), não a contagem da versão atual. As melhorias de qualidade (IQR, Z-score, Min-Max), planejamento, integração e NumPy permanecem no percurso. [Histórico de reforços](docs/REFORCOS_AULAO_10_OUT_QUALIDADE_V1.1.1.md) · [CHANGELOG](CHANGELOG.md) · [Fontes e escopo](docs/FONTES_E_ESCOPO.md). Materiais de terceiros continuam sujeitos aos direitos de seus titulares; não são automaticamente redistribuíveis.

## Uso do material

Otávio autoriza que o **conteúdo autoral deste repositório** seja consultado, utilizado, copiado e adaptado para fins de estudo e aprendizagem, sem necessidade de autorização individual para esse uso educacional.

Por decisão editorial, **não há um arquivo `LICENSE` separado** nesta versão. A autorização acima se aplica ao conteúdo autoral do repositório e não amplia direitos sobre materiais de terceiros citados ou referenciados.

## Contribuições

Use Issues ou Discussions para relatar inconsistências, indicar notebook/checkpoint, sugerir exemplos e explicar o resultado esperado. Veja [CONTRIBUTING](CONTRIBUTING.md). O Material Vivo evolui por revisão de conteúdo, testes e preservação da proveniência.
