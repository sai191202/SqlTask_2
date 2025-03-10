SELECT 
    sale_id, 
    region, 
    amount, 
    sale_date,
    SUM(amount) OVER (PARTITION BY region ORDER BY sale_date) AS running_total
FROM sales;
