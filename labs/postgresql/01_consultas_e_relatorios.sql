-- MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO — GUIA 05 — PostgreSQL.
-- PRÉ-CONDIÇÃO: rodar 00_dados_sinteticos.sql no mesmo banco isolado/autorizado.
SELECT current_database() AS banco, current_user AS usuario;
-- 1. Cardinalidade: 3 linhas do JOIN versus 2 pedidos distintos.
SELECT COUNT(*) AS linhas_join, COUNT(DISTINCT p.id) AS pedidos_distintos
FROM sctec_treino.pedidos p JOIN sctec_treino.itens i ON i.pedido_id=p.id;
-- 2. Cliente sem pedido.
SELECT c.nome FROM sctec_treino.clientes c
LEFT JOIN sctec_treino.pedidos p ON p.cliente_id=c.id
WHERE p.id IS NULL ORDER BY c.nome;
-- 3. Valor didático: não equivale a lucro ou receita recebida.
SELECT p.id, SUM(i.qtd) AS unidades,
 ROUND(SUM(i.qtd*i.preco*(1-i.desconto/100)),2) AS valor_itens
FROM sctec_treino.pedidos p JOIN sctec_treino.itens i ON i.pedido_id=p.id
WHERE p.status='concluido'
GROUP BY p.id HAVING SUM(i.qtd)>0 ORDER BY p.id;
-- 4. Subconsulta com alias (limiar do pedido, não acumulado por cliente).
SELECT id,valor_itens FROM (
 SELECT pedido_id AS id,ROUND(SUM(qtd*preco*(1-desconto/100)),2) AS valor_itens
 FROM sctec_treino.itens GROUP BY pedido_id) resumo WHERE valor_itens>20;
-- 5. CTE e DATE_TRUNC, específicos do PostgreSQL.
WITH resumo AS (
 SELECT p.id,p.dia,ROUND(SUM(i.qtd*i.preco*(1-i.desconto/100)),2) AS valor
 FROM sctec_treino.pedidos p JOIN sctec_treino.itens i ON p.id=i.pedido_id
 GROUP BY p.id,p.dia)
SELECT DATE_TRUNC('month',dia)::date AS mes,
 COUNT(DISTINCT id) AS pedidos,SUM(valor) AS valor_itens
FROM resumo GROUP BY DATE_TRUNC('month',dia)::date ORDER BY mes;
-- PREVISÃO MANUAL (NÃO SAÍDA TESTADA): Bia sem pedido; valores 40,00 e 13,50;
-- total 53,50; mes 2026-11-01; mês parcial não é comparável a período completo.

-- AMPLIAÇÃO AUTORAL — vincula fala de 17 e 19/11 aos quatro tipos de JOIN.
-- 6. RIGHT preserva clientes da direita, inclusive Bia, sem pedido.
SELECT c.nome, p.id AS pedido_id
FROM sctec_treino.pedidos p
RIGHT JOIN sctec_treino.clientes c ON c.id=p.cliente_id
ORDER BY c.nome, p.id;
-- 7. FULL preserva ausência de ambos os lados. A FK impede pedido órfão nesta base.
SELECT c.nome, p.id AS pedido_id
FROM sctec_treino.clientes c
FULL OUTER JOIN sctec_treino.pedidos p ON p.cliente_id=c.id
ORDER BY c.nome, p.id;
-- 8. UNION ALL empilha contagens e conserva linhas repetidas.
SELECT 'clientes' AS entidade, COUNT(*) AS quantidade FROM sctec_treino.clientes
UNION ALL
SELECT 'pedidos' AS entidade, COUNT(*) AS quantidade FROM sctec_treino.pedidos
UNION ALL
SELECT 'itens' AS entidade, COUNT(*) AS quantidade FROM sctec_treino.itens;
-- 9. SQL de apresentação: CONCAT e SUBSTRING, sem alterar dados armazenados.
SELECT CONCAT('Pedido ',p.id) AS rotulo, SUBSTRING(pr.id FROM 2 FOR 2) AS cod_parcial
FROM sctec_treino.pedidos p
JOIN sctec_treino.itens i ON i.pedido_id=p.id
JOIN sctec_treino.produtos pr ON pr.id=i.produto_id
ORDER BY p.id, pr.id;
-- 10. Filtros ILIKE, IN e BETWEEN: próprio do SQL PostgreSQL, não SQLite.
SELECT id,nome,estado FROM sctec_treino.clientes
WHERE nome ILIKE 'l%' AND estado IN ('SP','RJ')
ORDER BY id;
-- Em 24/11/2026 os scripts SQL foram executados contra PostgreSQL 18 TEMPORÁRIO ISOLADO.
-- Não extrapolar o resultado para a base/usuário PostgreSQL habitual.
