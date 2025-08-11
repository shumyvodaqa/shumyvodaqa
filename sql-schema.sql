-- Creating tables for internet store database

CREATE TABLE users (
  user_id INT PRIMARY KEY,
  username VARCHAR(50),
  registration_date DATE
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  price DECIMAL(10,2)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  user_id INT,
  order_date DATE,
  total_amount DECIMAL(10,2),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);
-- Inserting sample data
INSERT INTO users VALUES
  (1, 'ivan', '2024-01-10'),
  (2, 'anna', '2023-12-15'),
  (3, 'oleg', '2024-03-20');
INSERT INTO products VALUES
  (1, 'Phone', 699.99),
  (2, 'Laptop', 1299.99),
  (3, 'Headphones', 199.99);
INSERT INTO orders VALUES
  (1, 1, '2024-04-01', 899.99),
  (2, 2, '2024-04-03', 1299.99),
  (3, 3, '2024-04-05', 199.99);
INSERT INTO order_items VALUES
  (1, 1, 1, 1),
  (2, 1, 3, 1),
  (3, 2, 2, 1),
  (4, 3, 3, 1);