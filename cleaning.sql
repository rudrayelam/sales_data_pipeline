CREATE OR REPLACE TABLE clean_sales AS
SELECT
  order_id,
  sales_date,
  customer_name,
  product,
  category,
  COALESCE(quantity, 1) AS quantity,
  COALESCE(unit_price, 0) AS unit_price,
  COALESCE(revenue, quantity * unit_price, 0) AS revenue,
  COALESCE(profit, (quantity * unit_price) * 0.2, 0) AS profit,
  region,
  salesperson,
  payment_method,
  COALESCE(shipping_cost, 0) AS shipping_cost,
  COALESCE(discount, 0) AS discount
FROM workspace.default.unclean_sales_dataset_1000;
