-- 1. List all users registered in 2024
SELECT * FROM users 
WHERE registration_date >= '2024-01-01' AND registration_date < '2025-01-01';
-- 2. Count of orders per user
SELECT user_id, COUNT(*) AS orders_count 
FROM orders 
GROUP BY user_id;
-- 3. Top 3 best-selling products by quantity sold
SELECT product_id, SUM(quantity) AS total_sold
FROM order_items
GROUP BY product_id
ORDER BY total_sold DESC
LIMIT 3;
-- 4. Users who spent more than 1000 on orders
SELECT u.user_id, u.username, SUM(o.total_amount) AS total_spent
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id, u.username
HAVING total_spent > 1000;
-- 5. Orders with total amount greater than 500
SELECT * FROM orders
WHERE total_amount > 500;
-- 6. Product names and prices sorted by price descending
SELECT product_name, price
FROM products
ORDER BY price DESC;

