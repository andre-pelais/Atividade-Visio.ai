SELECT
r.shop_id,
r.operation_date,
r.total_value,
CASE
    WHEN r.delivery IS TRUE THEN 'Delivery'
    WHEN r.delivery IS FALSE THEN 'Na loja'
    ELSE 'Não especificado'  -- (Opcional, para tratar valores NULL ou outros)
  END as tipo_de_entrega
FROM  analise-highway-ativ-visio.ativ_visio_highway.receipts as r
WHERE r.canceled IS FALSE
