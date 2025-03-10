CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount DECIMAL(10,2),
    sale_date DATE,
    region VARCHAR(50)
);
