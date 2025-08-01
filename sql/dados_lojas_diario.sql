SELECT
  r.shop_id,
  r.operation_date,
  COUNT(r.identifier) AS num_vendas_p_dia_p_loja,
  SUM(r.total_value) AS receita_liquida,
  t.net_torque AS torque_diario,
FROM
  `analise-highway-ativ-visio.ativ_visio_highway.receipts` AS r
LEFT JOIN
  analise-highway-ativ-visio.ativ_visio_highway.torque AS t
ON
  r.shop_id=t.shop_id
  AND r.operation_date=t.operation_date

WHERE
  r.canceled IS FALSE
GROUP BY
  r.shop_id,
  r.operation_date,
  t.net_torque
ORDER BY
  r.operation_date
