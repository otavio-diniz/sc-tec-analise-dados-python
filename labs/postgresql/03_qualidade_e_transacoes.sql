-- MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO. PostgreSQL, banco de treino autorizado.
-- CREATE DATABASE fica fora de BEGIN/COMMIT; confirme banco e esquema antes de executar.
BEGIN;
SELECT current_database(), current_schema(), current_user;
CREATE TEMP TABLE cadastro(id int PRIMARY KEY,nome text NOT NULL,contato text UNIQUE);
CREATE TEMP TABLE encomenda(id int PRIMARY KEY,cliente int REFERENCES cadastro(id),valor int CHECK(valor>=0),status text);
CREATE TEMP TABLE linha(pedido int REFERENCES encomenda(id),sku text,qtd int CHECK(qtd>0),centavos int CHECK(centavos>=0),PRIMARY KEY(pedido,sku));
INSERT INTO cadastro VALUES(1,'Iris','iris@example.invalid'),(2,'Caio',NULL),(3,'Sol',NULL);
INSERT INTO encomenda VALUES(11,1,4500,'entregue'),(12,2,3000,'entregue'),(13,2,1000,'aberto');
INSERT INTO linha VALUES(11,'A9',2,2000),(11,'B9',1,500),(12,'C9',1,2500);
SELECT COUNT(*) total,COUNT(contato) com_contato,COUNT(*)-COUNT(contato) sem_contato FROM cadastro;
SELECT id,valor FROM encomenda WHERE status='entregue' AND valor>=3000 ORDER BY valor DESC,id LIMIT 2;
SELECT status,COUNT(*),SUM(valor),ROUND(AVG(valor),2),MIN(valor),MAX(valor) FROM encomenda GROUP BY status;
CREATE TEMP VIEW divergencias AS SELECT e.id,e.valor,SUM(l.qtd*l.centavos) itens
FROM encomenda e LEFT JOIN linha l ON l.pedido=e.id GROUP BY e.id,e.valor
HAVING COUNT(l.sku)=0 OR e.valor<>SUM(l.qtd*l.centavos);
SELECT * FROM divergencias ORDER BY id;
DO $$ BEGIN
 IF (SELECT COUNT(contato) FROM cadastro)<>1 THEN RAISE EXCEPTION 'Contagem de nulos'; END IF;
 IF (SELECT array_agg(id ORDER BY id) FROM divergencias)<>ARRAY[12,13] THEN RAISE EXCEPTION 'Divergencias incorretas'; END IF;
END $$;
-- Catálogo para DDL/DML: identificador automático, default, booleano, RETURNING.
CREATE TEMP TABLE catalogo(id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,nome text NOT NULL,categoria text NOT NULL,preco numeric(10,2) CHECK(preco>=0),estoque int DEFAULT 0 CHECK(estoque>=0),ativo boolean DEFAULT true NOT NULL);
INSERT INTO catalogo(nome,categoria,preco,estoque) VALUES('Lanterna LED','Casa',55,4),('Mapa','Papelaria',20,2),('Cabo LED','Eletrica',35,8);
SELECT nome,preco FROM catalogo WHERE ativo AND (categoria='Casa' OR categoria='Eletrica') AND preco BETWEEN 30 AND 60 ORDER BY preco DESC,id;
SELECT nome FROM catalogo WHERE nome ILIKE '%led%' ORDER BY id;
ALTER TABLE catalogo ADD COLUMN marca text;
SELECT id FROM catalogo WHERE marca IS NULL ORDER BY id;
CREATE TEMP TABLE rascunho(id int); DROP TABLE rascunho;
INSERT INTO catalogo(nome,categoria,preco) VALUES('Cesto','Casa',40) RETURNING id,nome,estoque;
SAVEPOINT antes_alteracao;
UPDATE catalogo SET estoque=estoque+2 WHERE nome='Mapa' RETURNING id,nome,estoque;
UPDATE catalogo SET ativo=false WHERE estoque<3 AND ativo RETURNING nome,ativo;
DELETE FROM catalogo WHERE nome='Cesto' RETURNING id,nome;
ROLLBACK TO SAVEPOINT antes_alteracao;
DO $$ BEGIN
 IF (SELECT estoque FROM catalogo WHERE nome='Mapa')<>2 THEN RAISE EXCEPTION 'Rollback estoque'; END IF;
 IF (SELECT COUNT(*) FROM catalogo)<>4 THEN RAISE EXCEPTION 'Rollback delete'; END IF;
 IF NOT (SELECT ativo FROM catalogo WHERE nome='Cesto') THEN RAISE EXCEPTION 'Rollback status'; END IF;
 RAISE NOTICE 'PASS: qualidade e DDL/DML, 5 verificacoes';
END $$;
ROLLBACK;
-- SET isolado não é comando UPDATE: use UPDATE tabela SET campo=... WHERE ...
