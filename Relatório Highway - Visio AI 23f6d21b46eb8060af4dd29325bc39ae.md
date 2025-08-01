# Relatório Highway - Visio.AI

Inicialmente criei um dataset no Google BigQuery (link do dataset: https://console.cloud.google.com/bigquery?ws=!1m4!1m3!3m2!1sanalise-highway-ativ-visio!2sativ_visio_highway) inserindo as tabelas fornecidas. 

A principal tabela do dataset é `receipts` , todas as outras tabelas (menos `torque`) possuem uma chave estrangeira para ela, que tem como chave primária a coluna `identifier` . As outras tem como chave estrangeira a coluna `fk_receipt_identifier` .

### Índice de Saúde Financeiro

Será usado como ISF a métrica `torque` , sendo calculado por dia e por loja. Avaliar o desempenho dessa métrica e comparar a sua evolução com o ticket médio é uma boa forma de avaliar como a empresa tem andando.

## Planejamento do dashboard

Meu objetivo com o dashboard é avaliar o desempenho das lojas em conjunto e separadamente

Scores a serem usados: Torque, ticket médio e porcentagem de vendas feitas com descontos ou promoções

---

### Métricas para se atentar

`receipts.total_value` - valor total de cada cupom. Será usada para calcular a receita total ou média por loja.

O faturamento líquido é, na verdade `net_revenue = total_value + fee` , sendo recomendado usar dessa maneira.

O ticket médio também será uma métrica importante, sendo calculada pelo Valor total das vendas pelo número total de pedido (pode ser feitos por período, por loja, antes e após aplicação de desconto e etc.).

Taxa de vendas adicionais é um importante métrica a ser criada, baseado na quantidade de itens vendidos em conjunto.

Percentual de descontos concedidos - É calculado dividindo o total de descontos concedidos pela receita bruta e multiplicando por 100.

### Dimensões importantes

`receipts.operation_date` e `receipts.date_time`- dia operacional (data da venda no caixa) e timestamp local. Poderão ser usados para mostrar evoluções temporais ou até mesmo por hora em cada dia.

`receipts.shop_id` - Identificador do estabelecimento. Será relacionada com o `total_value` .

### Perspectivas futuras

Dados provenientes de custo, tanto para produção quanto de funcionários, seriam importantes para obter mais informações sobre a saúde da empresa e melhorar o indicador de saúde financeira.

Acurácia nas vendas também é importante, podendo unir as informações obtidas pelas câmeras que ficam acima do caixa e usar isso como um indicador, visto que impacta na satisfação dos clientes.

[Anotações para a daily](https://www.notion.so/Anota-es-para-a-daily-23f6d21b46eb808688e8eb8c42015914?pvs=21)