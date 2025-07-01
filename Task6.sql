CREATE DATABASE IF NOT EXISTS EcommerceDB;
USE EcommerceDB;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS Orders;

DROP TABLE IF EXISTS Customers;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customers (name) VALUES 
('Amit'), 
('Neha'), 
('Ravi');

INSERT INTO Orders (customer_id, total_amount) VALUES 
(1, 5000),
(1, 3000),
(2, 12000),
(3, 2000);

-- ✅ 1. Subquery in SELECT: Show total order amount for each customer
SELECT 
    name,
    (SELECT SUM(total_amount) 
     FROM Orders 
     WHERE Orders.customer_id = Customers.customer_id) AS total_spent
FROM Customers;

-- ✅ 2. Subquery in WHERE: Customers who spent more than ₹5000
SELECT name 
FROM Customers 
WHERE customer_id IN (
    SELECT customer_id 
    FROM Orders 
    GROUP BY customer_id 
    HAVING SUM(total_amount) > 5000
);

-- ✅ 3. Subquery in FROM: Average spent by customers
SELECT customer_id, avg_spent
FROM (
    SELECT customer_id, AVG(total_amount) AS avg_spent
    FROM Orders
    GROUP BY customer_id
) AS AvgOrder;
