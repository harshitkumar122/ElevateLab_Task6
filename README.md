📘 README: ElevateLabs_Task6 – Subqueries and Nested Queries
🧠 Objective
Practice using subqueries in SELECT, WHERE, and FROM clauses to extract nested data logic using SQL.

🧰 Tools
MySQL Workbench

(Optional: DB Browser for SQLite)

📦 Deliverables
A complete SQL file containing:

Table creation with foreign key constraints

Sample data inserts

Queries using subqueries in multiple clauses

Focus on:

Scalar and correlated subqueries

Use of IN, EXISTS, and = with subqueries

🧭 Guide
Use CREATE, INSERT, and SELECT to build and query the schema

Use subqueries inside:

SELECT: scalar subqueries

WHERE: with IN, =

FROM: subquery as a derived table

Use GROUP BY and HAVING in subqueries for aggregation

Ensure foreign key references are handled correctly

Demonstrate advanced logic clearly

🗃️ Database: EcommerceDB
Schema Design
Customers Table
Column	Type
customer_id	INT, PRIMARY KEY, AUTO_INCREMENT
name	VARCHAR(100)

Orders Table
Column	Type
order_id	INT, PRIMARY KEY, AUTO_INCREMENT
customer_id	INT, FOREIGN KEY (references Customers)
total_amount	DECIMAL(10,2)

✅ Outcome
Advanced query logic skills
✔ You now understand how to apply nested and correlated subqueries to extract meaningful information from relational data
