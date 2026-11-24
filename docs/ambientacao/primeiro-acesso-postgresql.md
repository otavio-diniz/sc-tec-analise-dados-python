# PostgreSQL e pgAdmin do zero — pratique no banco real

Material didático sintético, não oficial. O caminho abaixo usa o PostgreSQL como **servidor**, o pgAdmin 4 como **cliente gráfico** e SQL como linguagem. O Guia 05 em Python/SQLite é simulação: não precisa de PostgreSQL, mas não substitui esta prática. Os passos de interface são orientados pela documentação oficial; nomes/ícones podem variar por versão. Execute em servidor autorizado, somente em bases próprias de treino.

## 1. Preparar o ambiente e os arquivos

1. [Baixe e extraia o repositório](comece-aqui.md#1-obtenha-uma-cópia-dos-arquivos). Dentro da pasta extraída, encontre `labs/postgresql`; os arquivos .sql são texto, não notebooks.
2. Se não tiver servidor local, consulte [PostgreSQL para Windows](https://www.postgresql.org/download/windows/) e [pgAdmin](https://www.pgadmin.org/download/). Em ambiente com instalação autorizada, escolha o instalador compatível, selecione PostgreSQL Server e pgAdmin (se oferecido), mantenha os diretórios sugeridos quando adequados, defina senha administrativa e anote a porta escolhida (normalmente 5432). Conclua o instalador. Se pgAdmin não vier junto, obtenha-o separadamente. Não instale outra instância sobre a existente nem altere serviços/firewall de ambientes alheios.
3. No Windows, menu Iniciar → pgAdmin 4. Se houver senha mestra do pgAdmin, ela protege senhas salvas; não é necessariamente a senha do usuário PostgreSQL. Para conexão local, confirme servidor em execução. Não publique nenhuma senha.
4. No painel **Browser/Object Explorer**, clique com o botão direito em **Servers → Register → Server** (ou Add New Server).
5. Em **General**, Name = SC TEC Treino. Em **Connection**, informe Host = 127.0.0.1 (se local), Port = porta efetiva, Maintenance database = postgres (se disponível), Username = usuário autorizado, Password = a senha desse usuário. Clique **Save**. Use credenciais reais somente no diálogo privado. Se a conexão falhar, não prossiga.

Referências: [cadastro de servidor](https://www.pgadmin.org/docs/pgadmin4/latest/server_dialog.html), [Query Tool](https://www.pgadmin.org/docs/pgadmin4/latest/query_tool.html).

## 2. Criar uma base de treino e fazer o primeiro SELECT

1. Expanda a conexão → **Databases**. Clique com o botão direito em Databases → **Create → Database**. Em Database, escreva `sctec_lab`; escolha o proprietário autorizado e **Save**. Se já existir, escolha outro nome novo e mantenha-o em todos os passos. Se não tiver permissão, solicite uma base de treino ao administrador; não use postgres ou uma base habitual para a carga.
2. Clique com o botão direito sobre a nova base → **Query Tool**. Verifique o banco exibido no cabeçalho. Na área do editor, digite:
```sql
SELECT current_database() AS banco, current_user AS usuario;
```
3. Clique **Execute script** (ícone de execução, F5 em versões atuais). Na aba **Data Output**, confira que banco = sctec_lab (ou o nome novo que escolheu). Execute também `SELECT 1 AS teste;`: espere uma linha com 1. Isso comprova conexão e primeira consulta; não comprova carga de tabelas.

## 3. Carregar o material autoral no pgAdmin

1. No Query Tool do banco de treino, clique no ícone **Open File** (pasta, Ctrl+O). Selecione o arquivo extraído [00_dados_sinteticos.sql](../../labs/postgresql/00_dados_sinteticos.sql). Leia BEGIN, CREATE SCHEMA, CREATE TABLE, INSERT e COMMIT. Ele cria o schema sctec_treino e quatro tabelas. Não execute em banco com material existente.
2. Remova qualquer seleção do editor e clique **Execute script** para rodar o arquivo inteiro. Verifique **Messages**: não deve haver erro. Se houver transação abortada, use `ROLLBACK;` no mesmo Query Tool e investigue a causa.
3. No painel esquerdo, expanda o banco → **Schemas**; clique **Refresh** se necessário. Expanda **sctec_treino → Tables**: clientes, produtos, pedidos, itens.
4. Clique com o botão direito em clientes → **View/Edit Data → All Rows** (somente observe). Para consultar por SQL, abra outra aba Query Tool **no mesmo banco** e execute:
```sql
SELECT nome FROM sctec_treino.clientes ORDER BY nome;
```
Resultado esperado: Bia, Lia, Raul. Confira 3 linhas; produtos = 2, pedidos = 2, itens = 3. Não repita carga para tentar corrigir uma tabela incorreta: ON CONFLICT DO NOTHING não reconcilia registros modificados.

## 4. Executar consultas e interpretar

Abra [01_consultas_e_relatorios.sql](../../labs/postgresql/01_consultas_e_relatorios.sql) pelo Open File. Para aprender, selecione **uma consulta completa** (até o ponto e vírgula) e execute. Observe Data Output antes de passar à seguinte; rodar tudo de uma vez pode mostrar apenas o último resultado na grade.

| Consulta do arquivo 01 | Resultado de conferência |
|---|---|
| Cardinalidade | 3 linhas do JOIN, 2 pedidos distintos |
| Cliente sem pedido | Bia |
| Valor por pedido | 101: R$ 40,00; 102: R$ 13,50 |
| CTE/mês | novembro de 2026: R$ 53,50 (período parcial) |

Experimente trocar o filtro por estado, preveja o resultado e compare. Não confunda valores de itens com lucro.

## 5. Normalização, metas e transações (SQL real)

Abra [02_metas_e_reconciliacao.sql](../../labs/postgresql/02_metas_e_reconciliacao.sql) e [03_qualidade_e_transacoes.sql](../../labs/postgresql/03_qualidade_e_transacoes.sql), **um por vez**, no banco dedicado. Eles criam tabelas temporárias, fazem consultas e terminam em ROLLBACK. Execute cada arquivo completo para o teste de integridade; veja Messages e os avisos de PASS. Para acompanhar as consultas intermediárias, execute em blocos na mesma aba, começando por BEGIN e criação/carga, e termine com ROLLBACK. Não execute um SELECT dependente antes de criar as tabelas nem espere que elas apareçam em outra conexão depois de ROLLBACK.

No 02, outubro: Lina 8000 centavos de realizado/8000 de meta; Davi 0/4000; Iara sem meta; id 9 é meta órfã. No 03, pedido 12 diverge e 13 não tem item. O CHECK e o rollback são intencionais. Os nomes e bases fictícios são distintos do laboratório 00/01.

## 6. Importar CSV usando a interface do pgAdmin (Semana 11)

Este caminho usa os **mesmos sete CSVs autorais** do laboratório 04 e não precisa de terminal ou Python.

1. No banco dedicado, abra e execute [04a_preparar_csv_pgadmin.sql](../../labs/postgresql/04a_preparar_csv_pgadmin.sql). Ele cria um schema novo e vazio `sctec_csv` com sete tabelas persistentes. Se o schema já existir, pare: não reutilize ou apague conteúdo desconhecido. Use um banco de treino novo para repetir.
2. Atualize a árvore **Schemas → sctec_csv → Tables**. Para cada tabela, clique com o botão direito → **Import/Export Data…**. Escolha **Import**, em Filename selecione o CSV local extraído de [dados_sinteticos](../../labs/postgresql/dados_sinteticos/); Format = csv, Encoding = UTF8, Header = Yes, Delimiter = vírgula, Quote = aspas duplas. Na aba Columns, preserve todas as colunas na ordem do cabeçalho. Clique OK e confira a notificação de sucesso/processo.
3. Repita, nesta ordem, para que chaves estrangeiras encontrem os cadastros:

| Tabela | Arquivo | Linhas esperadas |
|---|---|---:|
| cliente | [cliente.csv](../../labs/postgresql/dados_sinteticos/cliente.csv) | 3 |
| vendedor | [vendedor.csv](../../labs/postgresql/dados_sinteticos/vendedor.csv) | 3 |
| produto | [produto.csv](../../labs/postgresql/dados_sinteticos/produto.csv) | 3 |
| pedido | [pedido.csv](../../labs/postgresql/dados_sinteticos/pedido.csv) | 4 |
| item | [item.csv](../../labs/postgresql/dados_sinteticos/item.csv) | 5 |
| meta | [meta.csv](../../labs/postgresql/dados_sinteticos/meta.csv) | 3 |
| newsletter | [newsletter.csv](../../labs/postgresql/dados_sinteticos/newsletter.csv) | 2 |

4. Abra [04b_conferir_csv_pgadmin.sql](../../labs/postgresql/04b_conferir_csv_pgadmin.sql) no Query Tool e execute cada uma das três consultas separadamente. Confira as contagens acima, Lina 8000/8000, Davi 0/4000, Iara 0/NULL e as duas exceções de cadastro/meta. A meta órfã é proposital, não erro a apagar.
5. Na edição desktop do pgAdmin, o seletor de arquivo aponta para o computador local; no modo servidor, pode exigir upload pelo gerenciador de armazenamento. Confira o caminho antes de importar. Se houver erro de chave, verifique ordem e duplicação, não desative as restrições.

[Manual do diálogo Import/Export Data](https://www.pgadmin.org/docs/pgadmin4/latest/import_export_data.html) · [barra do Query Tool](https://www.pgadmin.org/docs/pgadmin4/latest/query_tool_toolbar.html).

## 7. Alternativa psql (opcional)

O arquivo [04_importacao_csv.psql](../../labs/postgresql/04_importacao_csv.psql) usa `\copy`, um metacomando do cliente psql, não SQL aceito no Query Tool. Abra terminal na raiz extraída (onde está README.md), com psql disponível. Exemplo local, substitua usuário/porta/banco pelos de treino:
```powershell
psql -h 127.0.0.1 -p 5432 -U USUARIO_DE_TREINO -d sctec_lab -v ON_ERROR_STOP=1 -f labs/postgresql/04_importacao_csv.psql
```
Forneça senha apenas no prompt privado, se pedida. O 04 cria tabelas temporárias, importa os CSVs e desfaz tudo no final. Não confundir com a carga persistente 04a/04b.

## 8. Diagnóstico e próximos passos

- Connection refused: confira host, porta e serviço autorizado. Falha de senha: verifique usuário/autenticação.
- Relation does not exist: confirme banco, schema e se a carga ocorreu. Chave duplicada: não reimporte em tabela preenchida; investigue primeiro.
- Erro de CSV: cabeçalho, separador, colunas, UTF-8, tipo e ordem das chaves.
- Query Tool mostra última consulta: execute as instruções separadamente.
- Tabelas temporárias sumiram: isso é esperado após rollback/conexão encerrada. As tabelas persistentes 00 e 04a ficam no banco dedicado; preserve-as para o treino. Não execute DROP em bases habituais.

[Guia SQL 05](../../notebooks/colab/05_sql_postgresql.ipynb) · [Caderno SQL 05](../../exercicios/colab/05_sql_postgresql_exercicios.ipynb) · [Percurso das semanas](../PERCURSO_DAS_SEMANAS.md). As consultas e dados foram validados em motor de teste; a execução pela interface pgAdmin não foi comprovada. [Evidências](../VALIDACAO_BANCOS_2026-11-24.md).
