-- MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO: laboratório descartável PostgreSQL.
-- Execute em banco de treino autorizado. Tabelas temporárias, rollback ao final.
BEGIN;
CREATE TEMP TABLE cliente(id int PRIMARY KEY,nome text NOT NULL,cidade text,estado char(2));
CREATE TEMP TABLE vendedor(id int PRIMARY KEY,nome text NOT NULL);
CREATE TEMP TABLE produto(id text PRIMARY KEY,nome text NOT NULL);
CREATE TEMP TABLE pedido(id int PRIMARY KEY,cliente_id int REFERENCES cliente(id),vendedor_id int REFERENCES vendedor(id),dia date,status text,canal text);
CREATE TEMP TABLE item(pedido_id int REFERENCES pedido(id),produto_id text REFERENCES produto(id),qtd int CHECK(qtd>0),preco int CHECK(preco>=0),desconto int CHECK(desconto BETWEEN 0 AND 100),PRIMARY KEY(pedido_id,produto_id));
-- Meta é estágio de importação: intencionalmente sem FK para encontrar cadastro ausente.
CREATE TEMP TABLE meta(vendedor_id int,mes date,valor int CHECK(valor>0),PRIMARY KEY(vendedor_id,mes));
CREATE TEMP TABLE newsletter(id int PRIMARY KEY,cliente_id int REFERENCES cliente(id));
INSERT INTO cliente VALUES(1,'Rui','Brisa','SC'),(2,'Nina','Serra','PR'),(3,'Eva','Vale','RS');
INSERT INTO vendedor VALUES(1,'Lina'),(2,'Davi'),(3,'Iara');
INSERT INTO produto VALUES('Z1','Luz'),('Z2','Vaso'),('Z3','Atlas');
INSERT INTO pedido VALUES(51,1,1,'2026-10-03','concluido','loja'),(52,1,1,'2026-10-20','concluido','web'),(53,2,2,'2026-10-25','cancelado','web'),(54,2,2,'2026-11-05','concluido','loja');
INSERT INTO item VALUES(51,'Z1',2,2000,0),(51,'Z2',1,1000,0),(52,'Z3',1,4000,25),(53,'Z1',1,2000,0),(54,'Z3',1,4000,0);
INSERT INTO meta VALUES(1,'2026-10-01',8000),(2,'2026-10-01',4000),(9,'2026-10-01',1000);
INSERT INTO newsletter VALUES(1,1),(2,3);
-- Contagem inicial: importar dimensões antes de fatos e reconciliar cada CSV.
SELECT 'cliente' AS tabela,COUNT(*) FROM cliente UNION ALL SELECT 'vendedor',COUNT(*) FROM vendedor
UNION ALL SELECT 'produto',COUNT(*) FROM produto UNION ALL SELECT 'pedido',COUNT(*) FROM pedido
UNION ALL SELECT 'item',COUNT(*) FROM item UNION ALL SELECT 'meta',COUNT(*) FROM meta
UNION ALL SELECT 'newsletter',COUNT(*) FROM newsletter;
-- Nome do cliente/vendedor por pedido; clientes sem pedido (LEFT/RIGHT).
SELECT p.id,c.nome,v.nome,p.canal FROM pedido p JOIN cliente c ON c.id=p.cliente_id JOIN vendedor v ON v.id=p.vendedor_id ORDER BY p.id;
SELECT c.nome FROM cliente c LEFT JOIN pedido p ON p.cliente_id=c.id WHERE p.id IS NULL;
SELECT c.nome FROM pedido p RIGHT JOIN cliente c ON p.cliente_id=c.id WHERE p.id IS NULL;
-- Exceções de cadastro/meta para outubro, dois sentidos.
CREATE TEMP VIEW excecao_meta AS SELECT v.id cadastro,m.vendedor_id meta_id
FROM vendedor v FULL OUTER JOIN (SELECT * FROM meta WHERE mes='2026-10-01') m ON m.vendedor_id=v.id
WHERE v.id IS NULL OR m.vendedor_id IS NULL;
SELECT * FROM excecao_meta ORDER BY COALESCE(cadastro,meta_id);
-- Uma linha por pedido válido, sem duplicar metas pelos itens.
CREATE TEMP VIEW resumo_pedido AS SELECT p.id,p.cliente_id,p.vendedor_id,p.dia,
 SUM(i.qtd*i.preco*(100-i.desconto)/100.0) AS valor,SUM(i.qtd) AS unidades
FROM pedido p JOIN item i ON i.pedido_id=p.id WHERE p.status NOT IN('cancelado','devolvido')
GROUP BY p.id,p.cliente_id,p.vendedor_id,p.dia;
SELECT c.estado,COUNT(DISTINCT r.id) pedidos,SUM(r.unidades) unidades,SUM(r.valor) centavos
FROM resumo_pedido r JOIN cliente c ON c.id=r.cliente_id GROUP BY c.estado HAVING SUM(r.valor)>4000;
SELECT DISTINCT canal FROM pedido ORDER BY canal;
SELECT ROUND(AVG(preco),2),MIN(preco),MAX(preco) FROM item;
SELECT produto_id,preco FROM item WHERE preco>(SELECT AVG(preco) FROM item) ORDER BY preco DESC;
SELECT nome FROM cliente WHERE id IN(SELECT cliente_id FROM resumo_pedido WHERE valor>4000);
SELECT * FROM (SELECT c.estado,SUM(r.valor) total FROM resumo_pedido r JOIN cliente c ON c.id=r.cliente_id GROUP BY c.estado) resumo WHERE total>4000;
WITH outubro AS (SELECT vendedor_id,SUM(valor) realizado FROM resumo_pedido WHERE DATE_TRUNC('month',dia)::date='2026-10-01' GROUP BY vendedor_id)
SELECT v.nome,COALESCE(o.realizado,0) realizado,m.valor meta
FROM vendedor v LEFT JOIN outubro o ON o.vendedor_id=v.id LEFT JOIN meta m ON m.vendedor_id=v.id AND m.mes='2026-10-01' ORDER BY v.id;
SELECT DATE_TRUNC('month',dia)::date mes,COUNT(DISTINCT id) pedidos,SUM(valor) valor FROM resumo_pedido GROUP BY 1 ORDER BY 1;
SELECT CONCAT(nome,' - ',cidade,'/',estado) FROM cliente ORDER BY id;
SELECT SUBSTRING(id FROM 2 FOR 1),nome FROM produto ORDER BY id;
SELECT nome FROM cliente WHERE nome ILIKE 'ru%' AND estado IN('SC','PR');
-- Diagnóstico transacional: bloco de exceção equivale a subtransação.
DO $$ BEGIN
  BEGIN
    INSERT INTO item VALUES(52,'Z2',0,500,0);
    RAISE EXCEPTION 'CHECK deveria rejeitar';
  EXCEPTION WHEN check_violation THEN NULL;
  END;
  IF (SELECT COUNT(*) FROM item)<>5 THEN RAISE EXCEPTION 'Rollback falhou'; END IF;
  IF (SELECT SUM(valor) FROM resumo_pedido WHERE dia<'2026-11-01')<>8000 THEN RAISE EXCEPTION 'Valor outubro divergente'; END IF;
  IF (SELECT COUNT(*) FROM excecao_meta)<>2 THEN RAISE EXCEPTION 'Excecoes de meta divergentes'; END IF;
  IF (SELECT COUNT(*) FROM resumo_pedido)<>3 THEN RAISE EXCEPTION 'Granularidade divergente'; END IF;
  IF (SELECT SUM(valor) FROM resumo_pedido WHERE dia>='2026-11-01')<>4000 THEN RAISE EXCEPTION 'Valor parcial divergente'; END IF;
  RAISE NOTICE 'PASS: 5 verificacoes de resultado e restricao';
END $$;
ROLLBACK;
-- Novembro é parcial. Meta ausente não é zero. Preço acima da média não prova outlier.
