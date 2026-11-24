# Primeiro acesso ao PostgreSQL e pgAdmin — passo a passo

**MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO — SC TEC T8 — GUIA 05.** Texto descritivo, não registro de instalação efetiva. Não modificar serviços, banco, firewall, PATH ou credenciais sem a autorização técnica aplicável.

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

**Previsão manual, não resultado executado:** Lia/Raul têm pedidos 101/102 e Bia não; valor dos itens depois de desconto: R$ 40,00 e R$ 13,50, total R$ 53,50. A demonstração Python dos [notebooks 05](../../notebooks/colab/05_sql_postgresql.ipynb) utiliza **SQLite em memória**, não o PostgreSQL real.

## 7. Diagnóstico
- `connection refused`: servidor/host/porta/firewall.
- Falha de senha: autenticação/usuário, sem contornar permissão.
- `database does not exist`: banco/servidor incorreto.
- `relation does not exist`: schema, tabela ou ordem de criação.
- `duplicate key`: script repetido, identificador já existente; não apagar dados às cegas.
- Contagem de pedidos inflada: JOIN 1:N e COUNT(*) em lugar de COUNT(DISTINCT pedido_id).
- Erro em DATE_TRUNC no Colab: SQLite não tem todo o dialeto PostgreSQL.

**Checkpoints:** COMPREENDER servidor/cliente/banco; EXECUTAR consulta no ambiente real autorizado; DIAGNOSTICAR erro e interpretação. Nenhum desses passos se comprova por simples leitura.