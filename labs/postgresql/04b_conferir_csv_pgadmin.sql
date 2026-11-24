-- MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO. Só leitura, após importar os sete CSVs.
-- Execute cada consulta separadamente para visualizar o resultado.
SELECT 'cliente' AS tabela,COUNT(*) AS linhas FROM sctec_csv.cliente
UNION ALL SELECT 'vendedor',COUNT(*) FROM sctec_csv.vendedor
UNION ALL SELECT 'produto',COUNT(*) FROM sctec_csv.produto
UNION ALL SELECT 'pedido',COUNT(*) FROM sctec_csv.pedido
UNION ALL SELECT 'item',COUNT(*) FROM sctec_csv.item
UNION ALL SELECT 'meta',COUNT(*) FROM sctec_csv.meta
UNION ALL SELECT 'newsletter',COUNT(*) FROM sctec_csv.newsletter;

-- Esperado: 3,3,3,4,5,3,2. Confira antes de continuar.
WITH realizado AS (
 SELECT p.vendedor_id,SUM(i.qtd*i.preco*(100-i.desconto)/100.0) AS centavos
 FROM sctec_csv.pedido p JOIN sctec_csv.item i ON i.pedido_id=p.id
 WHERE p.status NOT IN ('cancelado','devolvido')
 AND p.dia >= DATE '2026-10-01' AND p.dia < DATE '2026-11-01'
 GROUP BY p.vendedor_id
)
SELECT v.nome,COALESCE(r.centavos,0) AS realizado_centavos,m.valor AS meta_centavos
FROM sctec_csv.vendedor v LEFT JOIN realizado r ON r.vendedor_id=v.id
LEFT JOIN sctec_csv.meta m ON m.vendedor_id=v.id AND m.mes=DATE '2026-10-01'
ORDER BY v.id;
-- Esperado: Lina 8000/8000, Davi 0/4000, Iara 0/NULL.

SELECT v.id AS cadastro,m.vendedor_id AS meta_id
FROM sctec_csv.vendedor v FULL OUTER JOIN
 (SELECT * FROM sctec_csv.meta WHERE mes=DATE '2026-10-01') m ON m.vendedor_id=v.id
WHERE v.id IS NULL OR m.vendedor_id IS NULL
ORDER BY COALESCE(v.id,m.vendedor_id);
-- Esperado: cadastro 3 sem meta; meta 9 sem cadastro. Não corrigir artificialmente.
