-- 1. Select all columns from a table
SELECT * FROM customers;

-- 2. Select specific columns
SELECT first_name, last_name, email_address FROM employees;

-- 3. Select with column alias (renaming)
SELECT product_name AS Name, list_price AS Price FROM products;

-- 4. Select distinct values (no duplicates)
SELECT DISTINCT country_region FROM customers;
SELECT DISTINCT category FROM products;



-- 5. Basic equality
SELECT * FROM products WHERE category = 'Beverages';

-- 6. Comparison operators
SELECT * FROM products WHERE list_price > 20;
SELECT * FROM products WHERE standard_cost < 10;

-- 7. String pattern matching (LIKE)
SELECT * FROM customers WHERE company LIKE 'Company%';
SELECT * FROM products WHERE product_name LIKE '%Chai%';

-- 8. NULL values
SELECT * FROM orders WHERE shipped_date IS NULL;
SELECT * FROM orders WHERE paid_date IS NOT NULL;

-- 9. Multiple conditions (AND, OR)
SELECT * FROM products 
WHERE category = 'Beverages' AND list_price > 15;

SELECT * FROM customers 
WHERE city = 'Seattle' OR city = 'New York';

-- 10. IN operator
SELECT * FROM products WHERE category IN ('Beverages', 'Condiments', 'Sauces');

-- 11. BETWEEN operator
SELECT * FROM products WHERE list_price BETWEEN 10 AND 30;
SELECT * FROM orders WHERE order_date BETWEEN '2024-01-01' AND '2024-03-31';

-- 12. LIMIT (top rows)
SELECT * FROM products LIMIT 5;
SELECT * FROM customers ORDER BY id LIMIT 10;



-- 13. Sort ascending (default)
SELECT product_name, list_price FROM products ORDER BY list_price;

-- 14. Sort descending
SELECT product_name, list_price FROM products ORDER BY list_price DESC;

-- 15. Multiple column sorting
SELECT first_name, last_name, city FROM employees 
ORDER BY last_name ASC, first_name ASC;

-- 16. Sort by calculated field
SELECT product_name, list_price - standard_cost AS profit 
FROM products 
ORDER BY profit DESC;



-- 17. COUNT - number of rows
SELECT COUNT(*) AS total_customers FROM customers;
SELECT COUNT(DISTINCT category) FROM products;

-- 18. SUM - total
SELECT SUM(quantity) AS total_items_sold FROM order_details;
SELECT SUM(amount_due) AS total_revenue FROM invoices;

-- 19. AVG - average
SELECT AVG(list_price) AS average_product_price FROM products;
SELECT AVG(quantity) AS average_order_quantity FROM order_details;

-- 20. MIN and MAX
SELECT MIN(list_price) AS cheapest_product FROM products;
SELECT MAX(list_price) AS most_expensive_product FROM products;

-- 21. Multiple aggregates together
SELECT 
    COUNT(*) AS total_orders,
    MIN(order_date) AS first_order,
    MAX(order_date) AS last_order
FROM orders;



-- 26. INNER JOIN - Orders with customer names
SELECT o.id AS order_id, c.company, o.order_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.id;

-- 27. INNER JOIN with multiple tables
SELECT o.id, c.company, e.first_name, e.last_name
FROM orders o
JOIN customers c ON o.customer_id = c.id
JOIN employees e ON o.employee_id = e.id;

-- 28. Order details with product names
SELECT od.order_id, p.product_name, od.quantity, od.unit_price
FROM order_details od
JOIN products p ON od.product_id = p.id;

-- 29. LEFT JOIN (all orders, even without customer)
SELECT o.id, c.company 
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.id;

-- 30. Simple product-supplier join
SELECT p.product_name, s.company AS supplier_name
FROM products p
JOIN suppliers s ON p.supplier_ids = CAST(s.id AS TEXT);

-- 31. Top 5 most expensive products
SELECT product_name, list_price 
FROM products 
ORDER BY list_price DESC 
LIMIT 5;

-- 32. Orders with total value
SELECT o.id, SUM(od.quantity * od.unit_price) AS total_value
FROM orders o
JOIN order_details od ON o.id = od.order_id
GROUP BY o.id
ORDER BY total_value DESC;

-- 33. Customers and their order counts
SELECT c.company, COUNT(o.id) AS number_of_orders
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.company
ORDER BY number_of_orders DESC;

-- 34. Products that need reordering (low stock)
SELECT product_name, reorder_level
FROM products
WHERE discontinued = 0 AND reorder_level IS NOT NULL
ORDER BY reorder_level;

-- 35. Monthly order summary
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    COUNT(*) AS total_orders
FROM orders
GROUP BY year, month
ORDER BY year, month;

-- 36. Find duplicate email addresses
SELECT email_address, COUNT(*) 
FROM customers 
WHERE email_address IS NOT NULL
GROUP BY email_address 
HAVING COUNT(*) > 1;

-- 37. Products never ordered
SELECT p.product_name
FROM products p
LEFT JOIN order_details od ON p.id = od.product_id
WHERE od.product_id IS NULL;

-- 38. Simple sales report by product
SELECT 
    p.product_name,
    SUM(od.quantity) AS units_sold,
    SUM(od.quantity * od.unit_price) AS total_sales
FROM products p
JOIN order_details od ON p.id = od.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 10;

-- 39. Current status of all orders
SELECT 
    o.id,
    os.status_name,
    CASE 
        WHEN o.shipped_date IS NOT NULL THEN 'Shipped on ' || o.shipped_date::DATE
        WHEN o.order_date > CURRENT_DATE THEN 'Future order'
        ELSE 'Processing'
    END AS status_description
FROM orders o
JOIN orders_status os ON o.status_id = os.id;