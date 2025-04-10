SELECT * FROM sales.customers
WHERE customer_type = "Brick & Mortar"
GROUP BY customer_code;
SELECT * FROM sales.date
WHERE cy_date IN (2017-06-01, 2018-06-01)
ORDER BY cy_date DESC;
SELECT * FROM sales.products;
DELETE FROM sales.products
WHERE COALESCE (product_code, product_type) IS NULL;
SELECT count(*) FROM sales.transactions;
SELECT * FROM sales.date;
SELECT sales.transactions.*, sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date where date.year = 2018;
SELECT * FROM sales.customers
WHERE COALESCE (customer_code, custmer_name, customer_type) IS NULL;
SELECT * FROM sales.date
WHERE COALESCE (date, cy_date, year, month_name, date_yy_mmm) IS NULL;
SELECT * FROM sales.products
WHERE COALESCE (product_code, product_type) IS NULL;
SELECT * FROM sales.markets
WHERE COALESCE (markets_code, markets_name, zone) IS NULL;
SELECT * FROM sales.transactions
WHERE COALESCE (product_code, customer_code, market_code, order_date, sales_qty, sales_amount, currency, profit_margin_percentage, profit_margin, cost_price) IS NULL;
SELECT distinct product_code FROM transactions WHERE market_code='Mark001';
SELECT * from transactions WHERE currency="INR";
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date = date.date where date.year = 2018 and transactions.currency="INR\r";
SELECT SUM(transactions.sales_amount) FROM transactions LEFT JOIN date ON transactions.order_date = date.date where date.year = 2018 and transactions.market_code="Mark001";
SELECT AVG(transactions.sales_amount) FROM transactions RIGHT JOIN date ON transactions.order_date = date.date where date.year = 2017 and transactions.market_code="Mark001";
SELECT AVG(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date = date.date where date.year = 2017 and transactions.market_code="Mark001";
SELECT AVG(transactions.sales_amount) FROM transactions LEFT JOIN date ON transactions.order_date = date.date where date.year = 2018 and transactions.market_code="Mark001";