CREATE OR REPLACE TABLE final_sales AS
SELECT
  region,
  product,
  SUM(quantity) AS total_quantity,
  SUM(revenue) AS total_revenue,
  SUM(profit) AS total_profit,
  AVG(discount) AS avg_discount
FROM clean_sales
GROUP BY region, product;
