# Validação de laboratórios de bancos de dados — 24/11/2026

**SC TEC — Análise de Dados com Python, T8 · Material didático autoral/sintético, não oficial.** Este relatório distingue **código executado**, **prova de equivalência**, **execução não realizada** e **estado pedagógico**. Não atesta frequência, avaliação institucional nem instalação/funcionamento em computadores de terceiros.

## Escopo e segurança

A verificação foi conduzida em computador autorizado, usando componentes que **já estavam instalados**. Não foram instalados pacotes, editadas senhas, alteradas configurações dos serviços existentes ou acessadas tabelas/coleções pessoais. Bancos e dados de teste foram criados **somente em ambientes isolados** e removidos ao final.

### PostgreSQL 18 — motor real, laboratório isolado

- Serviço PostgreSQL habitual: ativo e aceitando conexões em porta padrão. Tentativa de conexão sem senha foi recusada por autenticação, preservada; suas bases **não foram acessadas nem alteradas**.
- Para validar o SQL, foi inicializada uma **instância temporária independente** com os executáveis PostgreSQL 18 já presentes. Servidor de teste vinculado exclusivamente a loopback, autenticação temporária SCRAM, credencial aleatória descartada, pasta de dados temporária e porta distinta da instalação habitual.
- No motor real do laboratório, foram executados, com parada em erro, os arquivos do repositório:
  - [00_dados_sinteticos.sql](../labs/postgresql/00_dados_sinteticos.sql);
  - [01_consultas_e_relatorios.sql](../labs/postgresql/01_consultas_e_relatorios.sql).
- O resultado da verificação SQL foi: **3 clientes | 2 pedidos | 3 itens | 53,50 em valor fictício de itens**, conforme as restrições e a agregação testadas. Retorno observado da consulta de asserção: `3|2|3|53.50`. Os dois scripts completaram a execução sem falha de SQL.
- Após a verificação, o servidor PostgreSQL temporário foi parado e seu diretório removido. Isso NÃO comprova autenticação/execução dos scripts no PostgreSQL de uso habitual, nem operação do pgAdmin.

**Estado PostgreSQL:** execução real dos arquivos SQL no **motor PostgreSQL 18** = validada em instância de treino; servidor habitual = não acessado.

### MongoDB — motor real, operação funcional e limpeza

- Serviço MongoDB local: ativo e atendendo conexão loopback. O aplicativo Compass está instalado, mas **mongosh não foi localizado no PATH ou nas pastas verificadas**.
- Com um cliente de teste de baixo nível construído em Node.js, sem dependências externas e sem credenciais, foi feito handshake MongoDB OP_MSG (`hello.ok=1`) e criado banco temporário com nome exclusivo. Não foi usado o cliente `mongosh`.
- O teste executou **insert real de 2 documentos de pedido**, **find real por item de array** (retornou 2 documentos, mantendo os 2 itens do pedido 101) e **pipeline real com unwind/group** (retornou 3 unidades em cada um dos pedidos 101 e 102).
- A operação **dropDatabase** do banco temporário criado pelo próprio teste retornou sucesso. Nenhuma outra base existente foi listada, aberta, modificada ou removida. O código de teste permaneceu temporário, não é um driver pedagógico/publicado.
- Os arquivos [00_dados_sinteticos.js](../labs/mongodb/00_dados_sinteticos.js) e [01_consultas_e_agregacao.js](../labs/mongodb/01_consultas_e_agregacao.js) foram aprovados no verificador **`node --check`**. Todavia, **não houve execução literal desses arquivos no mongosh**, nem verificação de uso do Compass por GUI.

**Estado MongoDB:** operações funcionais equivalentes em motor MongoDB real = validadas; execução literal dos scripts no mongosh = pendente.

### Colab e VS Code — simulações conceituais em Python

- Os oito notebooks Jupyter dos Guias/Cadernos 05/06 foram importados como JSON de trabalho e tiveram **106 células Python executadas** com Python 3.14.10, **zero exceções/asserções falhas**; paridade conceitual Colab/VS Code conferida.
- O eixo SQL usa **sqlite3 em memória** para permitir exercício imediato. SQLite não substitui PostgreSQL; as consultas de dialeto próprio são tratadas nos scripts separados.
- O eixo MongoDB usa **objetos Python**; não é conexão ao MongoDB. As demonstrações devem permanecer identificadas como **material didático fictício/sintético**.
- O teste local não é execução no serviço remoto do Google Colab nem confirmação do kernel VS Code em outra máquina.

## Como reproduzir verificações seguras

Para conferir apenas notebooks e caminhos do próprio repositório, sem servidor ou instalação, em Python previamente disponível:

```bash
python scripts/validar_notebooks_05_06.py
python scripts/verificar_links_05_06.py
```

Para checar sintaxe dos scripts JavaScript com Node disponível:

```bash
node --check labs/mongodb/00_dados_sinteticos.js
node --check labs/mongodb/01_consultas_e_agregacao.js
```

Para testes de motor PostgreSQL/MongoDB, **primeiro consultar os tutoriais de ambientação**, confirmar o executor, uma base exclusivamente de treino, autenticação e permissões. Não seguir um comando genérico contra uma base de produção.

## Resultado e limitações

| Item | Evidência | Estado |
|---|---|---|
| Oito notebooks e 106 células Python | Execução local + asserções | Verificado em simulação |
| Paridade Colab/VS Code | Comparação de células | Verificada estruturalmente |
| Scripts PostgreSQL (.sql) | Execução com PostgreSQL 18 isolado | Verificado no motor real |
| Consultas/agrupamento MongoDB | Execução funcional contra serviço local | Verificado no motor real por cliente de teste |
| Sintaxe dos dois .js | `node --check` | Verificada sintaticamente |
| Execução dos arquivos .js em mongosh | Shell não disponível na verificação | Não executada |
| pgAdmin e Compass pela interface GUI | Não automatizados | Não executados |
| Autenticação PostgreSQL habitual | Requer senha/usuário autorizado | Não realizada |
| Revalidação humana/instrutora dos Guias | Não apresentada | Não homologada |

O conjunto de notebooks e documentação pode ser disponibilizado no GitHub como **prévia didática para revisão**, sem afirmar que todos os ambientes de banco/GUI foram homologados. A baseline anterior permanece identificada por versão, e quaisquer lacunas devem continuar visíveis no histórico de revisão.

## Revisão de aderência pedagógica — 24/11/2026 (complemento posterior)

Após o confronto direto das **11 transcrições**, quatro apresentações e scripts docentes preservados no acervo institucional, houve enriquecimento dos **Guias/Cadernos 05/06** sem republicar material de terceiros. A nova **Etapa 0 do Guia 05** executa HTML local fictício → ETL → SQLite com `html.parser`/Decimal/SQLite, elevando a execução dos oito notebooks de 104 para **106 células Python**, todas validadas sem erro. O roteiro [Semanas 08–11](PERCURSO_SEMANAS_08_A_11.md) distingue aulas e agenda de slides; a [ponte da Semana 08](ambientacao/ponte-semana-08-etl.md) explica scraping responsável, BeautifulSoup, HTTP/requests e persistência inicial.

O SQL de relatórios ganhou **RIGHT JOIN, FULL OUTER JOIN, UNION ALL, ILIKE, CONCAT e SUBSTRING** e passou novamente no PostgreSQL 18 temporário isolado, com `3|2|3|53.50`, parada e remoção confirmadas. O script de leitura MongoDB ganhou **countDocuments, sort/limit, projeção e $match**; foram testadas operações equivalentes no motor MongoDB real através de cliente temporário Node, com **insert, find, count, sort/limit/projection, aggregate e dropDatabase** positivos. A execução literal dos arquivos .js em mongosh e a operação visual no Compass permanecem **não comprovadas**. A conferência de **19 arquivos e 147 links relativos** retornou zero quebra. Testes executados na ramificação de revisão antes da integração à principal; não extrapolar a homologação para a professora, sistemas externos ou outros datasets.

## Ampliação das oficinas — verificação de 24/11/2026

| Controle | Resultado medido |
|---|---|
| Simulação dos oito Guias/Cadernos 05/06 | 120 células Python, zero erros; quatro pares Colab/VS Code |
| Oficina HTTP/ETL | três registros autorais, R$115,00 somados, estoque 15, CSV com 3 linhas, SQLite reconciliado, HTTP 404 controlado |
| PostgreSQL 18.7 | scripts 00/01/02/03 e importação psql 04 executados em instância isolada; 7 CSVs (3/3/3/4/5/3/2 linhas) importados, 5 verificações do lab 02, 5 do 03 e 5 da carga 04; normalização adicional com 10 resultados e CHECK/rollback |
| MongoDB 9.0.8 | 11 verificações de operações equivalentes ao novo lab 02 via PyMongo; banco temporário removido |
| JavaScript | 3 arquivos passaram em node --check (sintaxe, não execução mongosh) |
| Exemplo comercial | outubro: 2 pedidos válidos, 8000 centavos; novembro parcial: 1, 4000 centavos; cadastro 3 sem meta e meta 9 sem cadastro |
| Qualidade SQL | 3 clientes, 1 contato presente; pedido 12 divergente, 13 sem item; rollback de DDL/DML demonstrado |

As verificações anteriores (106 e 114 células) são registros históricos, não a contagem atual. Os testes usam dados fictícios, sem credenciais ou dados docentes; não comprovam a execução em GUI, Colab remoto, MySQL, mongosh literal, todos os notebooks antigos, nem homologação pedagógica. A rotina HTTP é controlada, sem requisição externa. O projeto da Semana 07 é referência de portfólio independente.
