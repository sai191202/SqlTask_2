WITH RankedSales AS (
    SELECT 
        sale_id, 
        customer_id, 
        product, 
        amount, 
        sale_date, 
        region,
        RANK() OVER (PARTITION BY region ORDER BY amount DESC) AS rank
    FROM sales
)
SELECT sale_id, customer_id, product, amount, sale_date, region
FROM RankedSales
WHERE rank <= 2;
