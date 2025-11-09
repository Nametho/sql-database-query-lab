# SQL Database Query Portfolio

This repository contains a collection of SQL labs, progressing from basic queries to advanced server-side logic. The queries were written for a sample database (e.g., coffee sales, points of sale) to solve specific business and analytical problems.
---

### Database Schema

All queries in this project are based on the following relational database schema:

![Database Schema](database-schema.png)
---

### Skills Demonstrated

This portfolio demonstrates a strong understanding of database operations, including:

* **Foundational Queries:** `SELECT`, `WHERE`, `COUNT`, `GROUP BY`, `ORDER BY`, `LIKE`, and `AVG`.
* **Complex Joins:** `INNER JOIN` and `LEFT JOIN` across multiple (up to 8) normalized tables.
* **Data Filtering:** Advanced `WHERE` clauses, subqueries (`WHERE...IN`), and date range filtering.
* **Data Aggregation:** `GROUP BY` on multiple columns and filtering results with `HAVING`.
* **Database Objects:**
    * Creating and using `VIEWs` to simplify complex queries.
    * Creating `STORED PROCEDURES` to encapsulate business logic, handle parameters, and raise errors.
    * Implementing `TRIGGERS` to automatically maintain data integrity or create audit logs.

---

### Project Structure

The labs are organized by complexity:

* **/labo1-basics/**
    * Contains foundational `SELECT` statements, filtering, and aggregation.
* **/labo2-advanced-queries/**
    * Focuses on complex data retrieval using multi-table `JOINs`, `VIEWs`, and subqueries.
* **/labo3-server-logic/**
    * Demonstrates server-side logic using `CREATE PROCEDURE` and `CREATE TRIGGER`.
