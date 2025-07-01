
# SQL Task 5: Joins (Inner, Left, Right, Full)

## 🎯 Objective
Learn how to combine data from multiple tables using different types of SQL joins.

## 🛠 Tools Used
- DB Browser for SQLite / MySQL Workbench

## 📦 Deliverables
- SQL file containing table creation, data insertion, and all types of join queries.

## 🧱 Tables Used
1. **Customers**
2. **Orders**

## 📂 Schema

### Customers
| Column Name | Data Type |
|-------------|------------|
| CustomerID  | INTEGER PRIMARY KEY |
| Name        | TEXT |
| City        | TEXT |

### Orders
| Column Name | Data Type |
|-------------|------------|
| OrderID     | INTEGER PRIMARY KEY |
| OrderDate   | DATE |
| CustomerID  | INTEGER (Foreign Key) |
| Amount      | DECIMAL(10,2) |

## 💾 Sample Data
Includes 3 customers and 4 orders, with one order having no customer (NULL).

## 🔗 Join Queries Included
- ✅ INNER JOIN
- ✅ LEFT JOIN
- ✅ RIGHT JOIN (only in MySQL)
- ✅ FULL OUTER JOIN (simulated using UNION)
- 
## 📘 Key Concepts
- Joins
- Table Relationships
