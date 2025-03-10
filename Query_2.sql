SELECT sale_id, customer_id, product, amount, sale_date, region
FROM sales
WHERE amount > (SELECT AVG(amount) FROM sales);
