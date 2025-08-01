# Análise de desempenho da empresa fictícia Highway
Este projeto tem como objetivo criar um dashboard interativo no Looker Studio para monitorar e analisar métricas de venda, receita e um índice que avalia o desempenho de restaurantes de fast food, chamado **Torque**. O projeto utiliza uma solução Gloogle Cloud, especificamente o Google BigQuery para armazenamento e fonte de dados, usando de queries SQL otimizadas para extrair e transofrmar os dados necessários para as visualizações. O foco é fornecer uma visão clara do desempenho na geração de receita das lojas, permitindo identificar tendências e o suporte à tomada de decisões estratégicas.

## Etapas do projeto

1. **Fonte de Dados:** Os dados brutos de vendas estão armazenados no Google BigQuery em tabelas que foram carregadas a partir de arquivos .csv. As tabelas têm os seguintes nomes: receipts, items, payments, discounts e torque.
   
2. **Processamento de Dados:** As queries SQL foram usadas para:
    - Extrair dados relevantes da tabela `receipts`, `torque` e `discounts`
    - Pré-processar os dados realizando agregações e `JOIN`s necessários
    - Calcular as métricas e KPIs 
    - Gerar as visualizações do BigQuery que servirão como base para o dashboard

3. **Visualização:** O Looker Studio se conecta diretamente às visualizações do Bigquery, consultando os dados processados para criar o dashboard.

## Estrutura do Repositório
- `relatorio/` contendo o relatório da análise feita e insights;
- `sql/` contendo os arquivos `.sql` com as queries utilizadas para preparar os dados no Bigquery
- `README.md` este arquivo, com a descrição e detalhes do projeto

## Como Usar e Visualizar
Para replicar ou entender a lógica deste projeto:
1. Acesse os arquivos SQL para examinar as queries de preparação de dados.
2. Acesse o link para o Looker Studio contendo o [dashboard interativo](https://lookerstudio.google.com/reporting/ad037c32-bfee-47e6-bb30-b48df933055f) para entender as visualizações criadas.

## Autoria
O projeto foi desenvolvido por mim, André Pelais. Segue abaixo o link para o meu LinkedIn
- www.linkedin.com/in/andre-pelais

## Licença
Este projeto está sob a licença MIT e mais detalhes se encontram no arquivo `LICENSE.md`.
