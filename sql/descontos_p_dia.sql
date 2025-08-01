SELECT 
COUNT(DISTINCT(d.identifier)) as num_de_descontos,
SUM(d.total) as val_concendido,
d.operation_date,
r.shop_id
FROM `analise-highway-ativ-visio.ativ_visio_highway.discounts` as d
LEFT JOIN analise-highway-ativ-visio.ativ_visio_highway.receipts as r ON d.fk_receipt_identifier=r.identifier

WHERE d.canceled IS FALSE
GROUP BY d.operation_date,
r.shop_id
ORDER BY d.operation_date DESC
