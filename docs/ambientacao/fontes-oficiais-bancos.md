# Fontes oficiais e downloads de bancos de dados

**SC TEC T8 — referência para iniciantes; verificação externa em 23/11/2026.** Esta lista é material de apoio, não reprodução de slides da instrutora. Nenhuma instalação, compra, conta ou conexão foi executada.

| Ferramenta | Site oficial | Quando faz falta |
|---|---|---|
| PostgreSQL Server | [Downloads](https://www.postgresql.org/download/) · [Windows](https://www.postgresql.org/download/windows/) | Executar consultas SQL em servidor relacional |
| pgAdmin | [Downloads](https://www.pgadmin.org/download/) · [Windows](https://www.pgadmin.org/download/pgadmin-4-windows/) | Interface gráfica para o PostgreSQL |
| Registrar conexão pgAdmin | [Conectar ao servidor](https://www.pgadmin.org/docs/pgadmin4/latest/connecting.html) · [Server Dialog](https://www.pgadmin.org/docs/pgadmin4/latest/server_dialog.html) | Informar host, porta, banco, usuário, autenticação |
| Query Tool | [Documentação](https://www.pgadmin.org/docs/pgadmin4/latest/query_tool.html) | Executar SQL no banco selecionado |
| MongoDB Community | [Download](https://www.mongodb.com/try/download/community) · [Manual Windows](https://www.mongodb.com/docs/v8.0/tutorial/install-mongodb-on-windows/) | Servidor documental local |
| MongoDB Compass | [Download](https://www.mongodb.com/try/download/compass) · [Conectar](https://www.mongodb.com/docs/compass/connect/) | Interface gráfica para documentos |
| MongoDB Shell | [Download](https://www.mongodb.com/try/download/shell) · [Instalação](https://www.mongodb.com/docs/mongodb-shell/install/) | Comandos em sintaxe JavaScript no mongosh |
| Atlas Free, opcional | [Guia oficial](https://www.mongodb.com/docs/atlas/tutorial/deploy-free-tier-cluster/) | Servidor gerenciado mediante conta, termos, credenciais e política de rede |
| Colab | [Página oficial](https://colab.research.google.com/) | Notebooks Python, sem banco integrado automaticamente |
| VS Code | [Download](https://code.visualstudio.com/download) · [Jupyter](https://code.visualstudio.com/docs/datascience/jupyter-notebooks) | Editor e notebooks, dependente de kernel |

**Cadastro, registro e instalação são atos diferentes.** PostgreSQL local não exige cadastro online por padrão; o instalador configura serviço e conta técnica do banco. No pgAdmin, `Register Server` cadastra uma *conexão*, não cria automaticamente servidor. MongoDB Community local não exige conta Atlas; esta só é relevante para hospedagem gerenciada opcional.

No Windows, o instalador PostgreSQL indicado pela comunidade e distribuído pela EDB costuma incluir **PostgreSQL Server e pgAdmin**: confira os componentes antes de instalar pgAdmin em duplicidade. No MongoDB, **mongosh não vem automaticamente dentro do servidor**, e Compass é um produto à parte, que pode ser oferecido no instalador.

**Linguagens:** PostgreSQL é consultado via **SQL**. O shell MongoDB **mongosh utiliza sintaxe JavaScript**, que não é **Java**. Drivers Python e Java são integrações opcionais para ambas as plataformas; não são a linguagem obrigatória da GUI.

**Segurança:** verificar versão, sistema, direitos de instalação, porta, autenticação e ambiente. Nunca publicar URI com senha ou expor serviço local na internet. Não confundir material didático de download com ordem de instalação.

[Primeiro acesso PostgreSQL e pgAdmin](primeiro-acesso-postgresql.md) · [Primeiro acesso MongoDB e Compass](primeiro-acesso-mongodb.md).