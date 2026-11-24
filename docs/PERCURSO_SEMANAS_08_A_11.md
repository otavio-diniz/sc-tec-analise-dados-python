# Percurso didático documentado — Semanas 08 a 11 da SC TEC T8

**Material autoral de estudo, não institucional.** Abrange o Módulo institucional 01 — Manipulação de Dados com Python e SQL. Aulas transcritas e apresentações confrontadas por **conteúdo, não apenas por ordem de slides**. Os exemplos/soluções dos notebooks são **fictícios/sintéticos**; as transcrições, apresentações, bases e scripts originais permanecem no acervo privado, sem cópia para este GitHub.

## Primeiro: como usar este roteiro

1. Leia o **tema efetivamente apresentado** na data, não o que seria apresentado segundo o planejamento.
2. Abra o [Guia 05 — Colab](../notebooks/colab/05_sql_postgresql.ipynb) para os conceitos **ETL, relacional e SQL**; abra o [Guia 06 — Colab](../notebooks/colab/06_nosql_mongodb.ipynb) para **MongoDB/NoSQL**. Os pares VS Code estão na pasta correspondente.
3. Siga a etapa **COMPREENDER → EXECUTAR → DIAGNOSTICAR**. O Guia explica e simula; o Caderno tem tentativa, recuperação ativa e soluções comentadas. Abrir um arquivo não equivale a assistir à aula.
4. Se quiser executar no motor real, use primeiro o tutorial [PostgreSQL + pgAdmin](ambientacao/primeiro-acesso-postgresql.md) ou [MongoDB + Compass + mongosh](ambientacao/primeiro-acesso-mongodb.md). Servidores, linguagens e clientes são coisas diferentes; notebooks Python **não** conectam bancos automaticamente.

## Semana 08 — 27, 29 e 30/10/2026

| Aula efetivamente registrada | Tratamento didático e prática | Diferença perante a apresentação |
|---|---|---|
| **27/10:** inspeção HTML, seletores CSS, BeautifulSoup, funções/classes, pipeline ETL, SQLite | [Oficina de HTML → ETL → SQLite](ambientacao/ponte-semana-08-etl.md) e **Etapa 0** do Guia 05, com dados sintéticos locais | Slides incluem OLTP/OLAP e modelagem dimensional; nem todos esses blocos foram comprovados como prática oral |
| **29/10:** continuação de scraping, HTTP/requests e introdução PostgreSQL/pgAdmin/instalação | Primeiro acesso, conexão, SQL básico e distinção banco/cliente | Instruções de instalação da professora dependem da configuração da máquina; repetir só em laboratório autorizado |
| **30/10:** pgAdmin, SQL, estrutura de clientes/pedidos/itens, vendas e consultas | Guia 05 CP1–4, laboratório de três clientes e dois pedidos | Aula apresentou base comercial diferente e mais ampla, que não foi copiada |

**Fonte docente da semana:** apresentação M1S08, transcrições 27/29/30 e arquivos de aula SQL/HTML/SQLite, todos mantidos no acervo canônico.

## Semana 09 — 03, 05 e 06/11/2026

| Aula efetivamente registrada | Tratamento didático e prática | Diferença perante a apresentação |
|---|---|---|
| **03/11:** NoSQL, documentos, MongoDB/Compass, conexão e diferenças relacional/documental | Guia 06 CP1–3, primeiro acesso com servidor/GUI/shell distintos | Parte do deck também prevê normalização relacional e SQL, mas não atribuir tais slides automaticamente a esta aula |
| **05/11:** consulta MongoDB, find, filtros, atualização e agregações iniciais | Guia 06 CP4–7; laboratório MongoDB sintético e interpretado | A gravação é mais curta que três horas; não inferir prática fora do registro oral |
| **06/11:** documentos de pedidos, array, find, ordenação, limitação, countDocuments, pipeline e identificadores | Guia 06 CP4–8 com projeção, sort/limit, elemMatch e unwind/group | Exemplos da professora usam dados mais extensos; o laboratório publicado foi intencionalmente reduzido |

**Fonte docente:** apresentação M1S09, transcrições 03/05/06 e exemplos de pedidos/documentos preservados privadamente.

## Semana 10 — 10, 12 e 13/11/2026

| Aula efetivamente registrada | Tratamento didático e prática | Divergência material |
|---|---|---|
| **10/11:** revisão/prática NoSQL e operações MongoDB | Guia 06 CP3–8 | **DIVERGÊNCIA MATERIAL:** slide previa JOINs SQL nessa data |
| **12/11:** normalização de vendas brutas, PK/FK e separação de clientes, produtos, pedidos e itens | Guia 05 CP2 com oficina 1FN/2FN/3FN, carga SQL e reconstrução por JOIN | **DIVERGÊNCIA MATERIAL:** slide previa subconsultas/CTE; a aula tratou normalização |
| **13/11:** restrições DDL, transações, alterações, filtros LIKE/ILIKE, consultas comerciais | Guia 05 CP2, CP3 e CP8; instruções de segurança | **DIVERGÊNCIA MATERIAL:** views/CASE integrador aparecem no slide, mas a transcrição não comprova aula prática centrada neles |

**Não confundir:** SQL de normalização da aula e SQL de consultas comerciais têm bases e intenções diferentes. Não copiar/mesclar as famílias A/B dos CSV originais.

## Semana 11 — 17 e 19/11/2026

| Aula efetivamente registrada | Tratamento didático e prática | Divergência material |
|---|---|---|
| **17/11:** JOINs INNER/LEFT/RIGHT/FULL, métricas e cardinalidade comercial | Guia 05 CP3–4 e extensão do SQL de relatórios | O slide M1S11 previa integração Python–PostgreSQL, não confirmada na prática dessa aula |
| **19/11:** UNION ALL, JOINs, metas, GROUP BY/HAVING, COUNT DISTINCT, subconsultas AVG/IN/FROM, CTE, DATE_TRUNC, CONCAT/SUBSTRING, interpretação de mês parcial | Guia 05 CP3–8 e script SQL autoral | **DIVERGÊNCIA MATERIAL:** execução Python/psycopg/SQLAlchemy prevista no deck, mas não demonstrada na transcrição da aula. Há interrupção técnica no início da gravação |
| **20/11:** aula prevista no slide | **Não criar conteúdo como aula assistida/ministrada** | A professora informou que não haveria aula nessa sexta-feira |

**Fonte docente:** apresentação M1S11, transcrições 17/19 e SQL avançado da aula. A execução de uma query parecida no laboratório autoral não comprova resultado obtido no dataset da professora.

## Checklist de cobertura — o que está e não está afirmado

- **CORRESPONDENTE:** temas efetivamente ensinados, com remissão ao eixo e exemplos autorais.
- **COMPLEMENTO:** explicações iniciantes, pequenos dados sintéticos, transposição HTMLParser/SQLite, tutoriais de conexão, exercícios.
- **DIVERGÊNCIA MATERIAL:** cronograma M1S10/M1S11 versus fala real; está indicado em cada data.
- **SLIDE/PLANEJADO:** OLTP/OLAP dimensional aprofundado, SQLAlchemy/ORM e views/CASE quando não houver comprovação de execução oral. Não são declarados tarefas feitas.
- **POSSÍVEL TRECHO AUSENTE:** falha de gravação/entrada em 19/11. Não preencher como fato demonstrado.
- **NÃO COMPARÁVEL:** exemplos docentes com datasets diferentes não são resultado das simulações sintéticas publicadas.

O conjunto **não reproduz literalmente todas as telas, consultas e datasets da professora**. O objetivo é ensinar fundamentos e transpor os tópicos efetivamente observados a exemplos mínimos, mostrando onde buscar os arquivos da fonte oficial no acervo privado.

[Índice geral dos eixos 05/06](REVISAO_GUIAS_05_06.md) · [Validação e limites](VALIDACAO_BANCOS_2026-11-24.md) · [Biblioteca Viva: conceitos SQL/MongoDB](biblioteca-viva-bancos.md).
