Great question! Converting **rows to columns** and **columns to rows** is done using **pivot** and **unpivot** operations in SQL. This is very useful in reporting, analytics, or formatting data in more readable forms.

---

## 🔄 1. **Row to Column (Pivot)**

### ✅ Example: Convert **sales by quarter** from rows to columns

#### 📦 Table: `sales`

| product | quarter | amount |
| ------- | ------- | ------ |
| A       | Q1      | 100    |
| A       | Q2      | 150    |
| A       | Q3      | 200    |
| A       | Q4      | 250    |

---

### 👉 Pivot Output:

| product | Q1  | Q2  | Q3  | Q4  |
| ------- | --- | --- | --- | --- |
| A       | 100 | 150 | 200 | 250 |

---

### ✅ SQL (in PostgreSQL, MySQL 8+, SQL Server):

```sql
SELECT
  product,
  SUM(CASE WHEN quarter = 'Q1' THEN amount ELSE 0 END) AS Q1,
  SUM(CASE WHEN quarter = 'Q2' THEN amount ELSE 0 END) AS Q2,
  SUM(CASE WHEN quarter = 'Q3' THEN amount ELSE 0 END) AS Q3,
  SUM(CASE WHEN quarter = 'Q4' THEN amount ELSE 0 END) AS Q4
FROM sales
GROUP BY product;
```

> 🟢 Works in most SQL dialects (MySQL, Postgres, SQL Server, etc.).

---

## 🔁 2. **Column to Row (Unpivot)**

Let’s reverse the pivoted table:

| product | Q1  | Q2  | Q3  | Q4  |
| ------- | --- | --- | --- | --- |
| A       | 100 | 150 | 200 | 250 |

---

### 👉 Unpivot Output:

| product | quarter | amount |
| ------- | ------- | ------ |
| A       | Q1      | 100    |
| A       | Q2      | 150    |
| A       | Q3      | 200    |
| A       | Q4      | 250    |

---

### ✅ SQL (Standard Way using `UNION ALL`):

```sql
SELECT product, 'Q1' AS quarter, Q1 AS amount FROM pivoted_sales
UNION ALL
SELECT product, 'Q2', Q2 FROM pivoted_sales
UNION ALL
SELECT product, 'Q3', Q3 FROM pivoted_sales
UNION ALL
SELECT product, 'Q4', Q4 FROM pivoted_sales;
```

> 🟡 This is **manual but universal** (works everywhere).

---

### 🔧 SQL Server Only: `UNPIVOT`

```sql
SELECT product, quarter, amount
FROM pivoted_sales
UNPIVOT (
    amount FOR quarter IN (Q1, Q2, Q3, Q4)
) AS unpvt;
```

> ✅ Works only in SQL Server.

---

## 🧠 Summary

| Task         | SQL Technique                |
| ------------ | ---------------------------- |
| Row → Column | `PIVOT` or `CASE + GROUP BY` |
| Column → Row | `UNION ALL` or `UNPIVOT`     |

---

Would you like me to generate these queries for your specific table and columns? Just share schema or sample rows.
