-- MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO. Execute apenas em banco dedicado de treino.
-- Cria schema NOVO, sem apagar ou reutilizar schema existente. Se já existir, pare.
BEGIN;
CREATE SCHEMA sctec_csv;
SET LOCAL search_path TO sctec_csv;
CREATE TABLE cliente(id int PRIMARY KEY,nome text NOT NULL,cidade text,estado char(2));
CREATE TABLE vendedor(id int PRIMARY KEY,nome text NOT NULL);
CREATE TABLE produto(id text PRIMARY KEY,nome text NOT NULL);
CREATE TABLE pedido(id int PRIMARY KEY,cliente_id int REFERENCES cliente(id),vendedor_id int REFERENCES vendedor(id),dia date,status text,canal text);
CREATE TABLE item(pedido_id int REFERENCES pedido(id),produto_id text REFERENCES produto(id),qtd int CHECK(qtd>0),preco int CHECK(preco>=0),desconto int CHECK(desconto BETWEEN 0 AND 100),PRIMARY KEY(pedido_id,produto_id));
CREATE TABLE meta(vendedor_id int,mes date,valor int CHECK(valor>0),PRIMARY KEY(vendedor_id,mes));
CREATE TABLE newsletter(id int PRIMARY KEY,cliente_id int REFERENCES cliente(id));
COMMIT;
-- Após sucesso, atualize a árvore Schemas > sctec_csv > Tables.
-- Importe os 7 CSVs via Import/Export Data na ordem do tutorial.
