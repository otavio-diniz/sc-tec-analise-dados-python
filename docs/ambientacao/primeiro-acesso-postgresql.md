# Primeiro acesso ao PostgreSQL e pgAdmin — passo a passo

**MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO — SC TEC T8 — GUIA 05.** O roteiro ensina o uso desde o início; não constitui autorização para instalar ou modificar serviços, firewall, PATH ou credenciais. Em 24/11/2026, os SQL autorais foram executados com sucesso em um PostgreSQL 18 **temporário e isolado**, sem alterar o servidor habitual. Isso não significa que a interface pgAdmin tenha sido homologada.

## 1. Entenda cada componente
- **PostgreSQL** é o servidor que armazena tabelas e executa SQL.
- **pgAdmin 4** é cliente gráfico. **Query Tool** envia SQL para um banco selecionado.
- **Banco de dados** contém **schemas** que contêm tabelas, com colunas, linhas e chaves.
- **SQL** é a linguagem de consulta; **Python** pode se conectar via driver (assunto futuro nos slides) mas não é necessário para usar o Query Tool.

## 2. Descubra se já existe ambiente de treino
Antes de baixar, verificar servidor PostgreSQL instalado/ativo, versão, host, porta, usuário de treino, banco permitido, senha de forma segura e se o pgAdmin já está presente. **Ter pgAdmin não prova ter servidor.**

## 3. Download e instalação (somente como instrução de estudo)
1. Consultar [página oficial PostgreSQL Windows](https://www.postgresql.org/download/windows/) ou outro SO correto.
2. Conferir a versão e os componentes oferecidos pela EDB (servidor e pgAdmin).
3. Identificar escolhas de diretório, serviço, porta e senha administrativa; não colocar senha em notebooks, logs públicos ou prints.
4. Se houver servidor existente, não sobrescrever nem desativar para seguir um roteiro genérico.
5. Após instalação **autorizada**, testar servidor e aplicativo separadamente.

## 4. Cadastre uma conexão no pgAdmin
1. Abrir pgAdmin 4; localizar `Servers` no painel.
2. Selecionar `Register → Server` ou `Add New Server`, conforme a versão.
3. Em `General / Name`, registrar nome informativo, ex.: `SC TEC — Treino local`.
4. Em `Connection`, preencher com os valores **efetivos** do ambiente: `Host` (ex. `127.0.0.1` apenas se local), `Port` (frequentemente `5432`, não presumir), `Maintenance database` (frequentemente `postgres`), `Username` e autenticação autorizada.
5. Salvar e conectar. A senha não deve ser copiada no repositório nem exposta em uma captura pública.
6. Navegar `Servers → Databases → [banco de treino] → Schemas → public → Tables`. Confirmar o banco selecionado **antes de abrir Query Tool**.

Docs: [conexão](https://www.pgadmin.org/docs/pgadmin4/latest/connecting.html), [janela de cadastro](https://www.pgadmin.org/docs/pgadmin4/latest/server_dialog.html), [Query Tool](https://www.pgadmin.org/docs/pgadmin4/latest/query_tool.html).

## 5. Primeira consulta de diagnóstico
No Query Tool de um banco **autorizado e isolado**, começar por consultas somente de leitura:

```sql
SELECT current_database() AS banco_ativo, current_user AS usuario_ativo;
SELECT current_schema() AS esquema_ativo, version() AS versao_servidor;
```

As saídas dependem do servidor real; não há saída comprovada deste laboratório neste material.

## 6. Laboratórios e interpretação
O arquivo [00_dados_sinteticos.sql](../../labs/postgresql/00_dados_sinteticos.sql) contém DDL e INSERT **que modificam um banco**: só usar em ambiente de treino separado depois de revisar. Cria schema `sctec_treino` e dados autorais: 3 clientes, 2 produtos, 2 pedidos e 3 linhas de itens.

O arquivo [01_consultas_e_relatorios.sql](../../labs/postgresql/01_consultas_e_relatorios.sql) trabalha JOINs, COUNT DISTINCT, cliente sem compras, soma por pedido, subconsulta, CTE e DATE_TRUNC.

**Previsão didática confirmada em laboratório isolado PostgreSQL 18 (24/11):** Lia/Raul têm pedidos 101/102 e Bia não; valor dos itens depois de desconto: R$ 40,00 e R$ 13,50, total R$ 53,50. Ver [validação técnica](../VALIDACAO_BANCOS_2026-11-24.md). O servidor principal e o pgAdmin não foram usados para esta execução. A demonstração Python dos [notebooks 05](../../notebooks/colab/05_sql_postgresql.ipynb) utiliza **SQLite em memória**, não o PostgreSQL real.

## 7. Diagnóstico
- `connection refused`: servidor/host/porta/firewall.
- Falha de senha: autenticação/usuário, sem contornar permissão.
- `database does not exist`: banco/servidor incorreto.
- `relation does not exist`: schema, tabela ou ordem de criação.
- `duplicate key`: script repetido, identificador já existente; não apagar dados às cegas.
- Contagem de pedidos inflada: JOIN 1:N e COUNT(*) em lugar de COUNT(DISTINCT pedido_id).
- Erro em DATE_TRUNC no Colab: SQLite não tem todo o dialeto PostgreSQL.

**Checkpoints:** COMPREENDER servidor/cliente/banco; EXECUTAR consulta no ambiente real autorizado; DIAGNOSTICAR erro e interpretação. Nenhum desses passos se comprova por simples leitura.


## 8. Caminho visual completo para um iniciante

**Sem acesso ao servidor?** Execute somente a [Etapa 0 de ETL/SQLite do Guia 05](../../notebooks/colab/05_sql_postgresql.ipynb). Ela não requer login PostgreSQL. **Com servidor de treino autorizado:** entre no pgAdmin → painel **Browser** → **Servers** → selecione/registre a conexão → **Databases** → confirme o banco → abra **Query Tool** nesse banco. Leia no topo do Query Tool o banco conectado antes de digitar qualquer consulta.

**Primeira prática com resultado previsto:**
1. Execute **somente leitura**: `SELECT current_database() AS banco, current_user AS usuario;`.
2. Num banco separado de treino, leia o arquivo `labs/postgresql/00_dados_sinteticos.sql` até compreender `CREATE SCHEMA`, `CREATE TABLE`, PK, FK e INSERT. A execução **cria e altera** estruturas no banco selecionado.
3. Depois de executar a carga autorizada, use `SELECT nome FROM sctec_treino.clientes ORDER BY nome;`: espere **Bia, Lia, Raul**. Confira as três linhas.
4. Abra o script de relatórios (leitura) e compare `COUNT(*)` e `COUNT(DISTINCT)` após JOIN: **3 linhas de item** e **2 pedidos**.
5. Consulte `information_schema.tables` e a árvore `Schemas → sctec_treino → Tables`, localize as quatro tabelas. Se estiver em `public` por engano, corrija o caminho de leitura antes de modificar qualquer coisa.

**Diferença entre cadastrar e criar:** registrar um *Server* no pgAdmin salva uma conexão; `CREATE DATABASE` cria uma base; `CREATE SCHEMA` cria um agrupamento dentro de uma base; `CREATE TABLE` cria uma tabela. São quatro ações diferentes.

**Próximas aulas:** 12/11 traz normalização 1FN–3FN, 13/11 DDL/transações e 17–19/11 JOINs/indicadores/CTEs. [Percurso por data](../PERCURSO_SEMANAS_08_A_11.md).