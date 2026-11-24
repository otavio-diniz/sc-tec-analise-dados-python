-- SC TEC T8 | MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO | GUIA 05
-- Executor: PostgreSQL via pgAdmin Query Tool/psql, banco de treino AUTORIZADO.
-- NÃO execute em produção, em bases do professor ou em banco preexistente não examinado.
-- Verifique current_database() e current_user ANTES. Este script não cria usuário nem senha.
BEGIN;
CREATE SCHEMA IF NOT EXISTS sctec_treino;
CREATE TABLE IF NOT EXISTS sctec_treino.clientes(
 id integer PRIMARY KEY,nome text NOT NULL,estado char(2) NOT NULL);
CREATE TABLE IF NOT EXISTS sctec_treino.produtos(
 id text PRIMARY KEY,nome text NOT NULL,preco numeric(10,2) NOT NULL);
CREATE TABLE IF NOT EXISTS sctec_treino.pedidos(
 id integer PRIMARY KEY,cliente_id integer NOT NULL REFERENCES sctec_treino.clientes(id),
 dia date NOT NULL,status text NOT NULL);
CREATE TABLE IF NOT EXISTS sctec_treino.itens(
 pedido_id integer REFERENCES sctec_treino.pedidos(id),
 produto_id text REFERENCES sctec_treino.produtos(id),
 qtd integer NOT NULL CHECK(qtd>0),
 preco numeric(10,2) NOT NULL CHECK(preco>=0),
 desconto numeric(5,2) NOT NULL CHECK(desconto BETWEEN 0 AND 100),
 PRIMARY KEY(pedido_id,produto_id));
INSERT INTO sctec_treino.clientes VALUES(1,'Lia','SP'),(2,'Raul','RJ'),(3,'Bia','MG') ON CONFLICT DO NOTHING;
INSERT INTO sctec_treino.produtos VALUES('P01','Caderno',10),('P02','Caneta',20) ON CONFLICT DO NOTHING;
INSERT INTO sctec_treino.pedidos VALUES(101,1,DATE '2026-11-05','concluido'),(102,2,DATE '2026-11-09','concluido') ON CONFLICT DO NOTHING;
INSERT INTO sctec_treino.itens VALUES(101,'P01',2,10,0),(101,'P02',1,20,0),(102,'P01',3,5,10) ON CONFLICT DO NOTHING;
COMMIT;
-- Dados esperados em banco limpo: 3 clientes, 2 produtos, 2 pedidos e 3 itens.
-- ON CONFLICT DO NOTHING torna a carga repetida tolerante a chaves, mas NÃO reconcilia alterações anteriores.
