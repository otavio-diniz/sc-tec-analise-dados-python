# Ambientação — SQL, PostgreSQL, pgAdmin e MongoDB

**SC TEC · Análise de Dados com Python · T8**  
**Material didático complementar, autoral e não oficial.** Esta página apresenta o caminho inicial dos estudos das Semanas 08–11. **Não afirma instalação, conexão, execução nem aprovação de atividades.** A biblioteca de Guias/Cadernos 01–04 permanece independente.

## 1. Quem faz o quê?

| Ferramenta | Papel | Limite importante |
|---|---|---|
| PostgreSQL | Servidor de banco de dados relacional | Não equivale a editor Jupyter |
| pgAdmin | Cliente gráfico e Query Tool | Não cria servidor por estar aberto |
| MongoDB Community | Servidor de banco documental | Não é a mesma coisa que Compass |
| MongoDB Compass | Interface gráfica para documentos | Não garante que haja servidor instalado |
| mongosh | Shell para comandos MongoDB | Não é interpretador Python |
| Colab | Ambiente de notebooks Python na web | Não executa PostgreSQL/MongoDB automaticamente |
| VS Code | Editor de notebooks e scripts | Depende de executor/conexão para SQL e MongoDB |

## 2. Fontes oficiais de download

- [PostgreSQL — downloads](https://www.postgresql.org/download/) e [instalador para Windows](https://www.postgresql.org/download/windows/). A página oficial informa que o pacote Windows da EDB inclui **PostgreSQL Server + pgAdmin**; verificar componentes para não duplicar instalação.
- [pgAdmin 4 — download Windows](https://www.pgadmin.org/download/pgadmin-4-windows/).
- [MongoDB Community Server](https://www.mongodb.com/try/download/community) e [tutorial oficial para Windows](https://www.mongodb.com/pt-br/docs/v8.0/tutorial/install-mongodb-on-windows/).
- [MongoDB Compass](https://www.mongodb.com/try/download/compass) e [MongoDB Shell (mongosh)](https://www.mongodb.com/try/download/shell). **mongosh é instalado separadamente**; o pacote Community pode oferecer Compass.
- [MongoDB Atlas Free](https://www.mongodb.com/pt-br/docs/atlas/tutorial/deploy-free-tier-cluster/): alternativa na nuvem, com limites, conta e termos próprios.
- [Google Colab](https://colab.research.google.com/) · [VS Code](https://code.visualstudio.com/download).

Estes links são referências, não uma ordem para instalar todos os programas. A escolha depende de sistema operacional, compatibilidade, permissões, política de segurança e necessidades reais do laboratório.

## 3. Trilha inicial PostgreSQL / pgAdmin

1. Confirme se já existe **servidor PostgreSQL de treino** autorizado; identifique host, porta, banco e usuário, sem divulgar senha.
2. No pgAdmin, reconheça a navegação **Servers → Databases → Schemas → public → Tables** e abra Query Tool na conexão apropriada.
3. Em banco de laboratório, as primeiras consultas de diagnóstico são **SELECT current_database();** e **SELECT current_user;**. Os resultados dependem da conexão real.
4. Separe base de treino de banco de produção e do material da professora. Comece com **clientes, pedidos e itens**, suas chaves e cardinalidades.
5. Faça SELECT/WHERE/ORDER BY antes de JOIN; depois COUNT(*) versus COUNT(DISTINCT pedido_id), GROUP BY/HAVING, subconsultas e CTEs.
6. Antes de executar CREATE/INSERT/UPDATE/DELETE, revise banco selecionado, efeito esperado, reversibilidade e possibilidade de colisão de identificadores.

**Dica de Ouro:** uma linha de item e um pedido são unidades distintas; somar dados após JOIN pode inflar um relatório.

## 4. Trilha inicial MongoDB / Compass / mongosh

1. Confirme servidor local ou acesso a banco de treino. **Compass e mongosh são clientes**.
2. Identifique a conexão: **mongodb://localhost:27017** é apenas exemplo de URI local; só funciona com servidor disponível e configuração compatível.
3. Entenda documento, coleção, subdocumento, array e identificador _id antes de executar comandos.
4. Pratique consultas de leitura com **find({})** e filtros de campos aninhados. Encontrar um documento por item de array não filtra automaticamente os outros elementos.
5. Só depois avance para countDocuments, elemMatch, unwind, group e atualização com updateOne em dados sintéticos descartáveis.

**Dica de Ouro:** mongosh usa sintaxe próxima de JavaScript, não Python; um arquivo JSON é dado, não banco operacional.

## 5. O que foi aula e o que foi planejamento

- **Semana 08:** ETL/web scraping, SQLite e início das práticas PostgreSQL.
- **Semana 09:** introdução e exercícios MongoDB.
- **Semana 10:** continuidade NoSQL, normalização e consultas PostgreSQL, em sequência distinta dos slides.
- **Semana 11:** prática SQL e relatórios com JOIN, agregação, subconsulta e CTE. O slide previa Python/psycopg2/ORM, mas a aula gravada de 19/11 não comprova essa integração como prática.

Os **Guias e Cadernos 05/06 estão publicados como prévia didática no GitHub**, com exemplos fictícios, checkpoints, pares Colab/VS Code e [percurso de cada aula](../PERCURSO_SEMANAS_08_A_11.md). Esta página não replica apresentações, scripts, datasets ou transcrições da instrutora.

## 6. Situação de validação (atualização de 24/11/2026)

Documento introdutório: **conceitos e links oficiais revisados**. Em 24/11/2026 os dois scripts SQL autorais foram executados em PostgreSQL 18 temporário isolado e foram executadas operações equivalentes no MongoDB local em base temporária, com limpeza. **Não** foram testados os aplicativos gráficos nem executados literalmente os dois arquivos .js no mongosh. Nenhuma nova instalação, conta Atlas, script institucional ou atividade submetida. [Relatório técnico](../VALIDACAO_BANCOS_2026-11-24.md).

[Voltar ao README](../../README.md) · [Método pedagógico](../METODO_PEDAGOGICO.md)
