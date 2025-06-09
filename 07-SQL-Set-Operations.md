# Set Operations
1. Union
2. Union ALL
3. Intersect
4. Except


Sure! Here’s a clear explanation with examples for the **4 main set operations in SQL**: `UNION`, `UNION ALL`, `INTERSECT`, and `EXCEPT`.

---

# 🔥 SQL Set Operations Explained with Examples

Imagine two tables with a simple structure:

```sql
-- Table A
id | name
---------
1  | Alice
2  | Bob
3  | Carol

-- Table B
id | name
---------
2  | Bob
3  | Carol
4  | Dave
```

---

## 1️⃣ UNION

* Combines results from two queries.
* Removes **duplicate rows**.
* Result contains **unique rows** present in either A or B.

```sql
SELECT name FROM A
UNION
SELECT name FROM B;
```

### Result:

| name  |
| ----- |
| Alice |
| Bob   |
| Carol |
| Dave  |

> **Duplicates like Bob, Carol appear only once.**

---

## 2️⃣ UNION ALL

* Combines results from two queries.
* **Includes duplicates**.
* Result contains **all rows from A and B**.

```sql
SELECT name FROM A
UNION ALL
SELECT name FROM B;
```

### Result:

| name  |
| ----- |
| Alice |
| Bob   |
| Carol |
| Bob   |
| Carol |
| Dave  |

> **Duplicates appear as many times as they exist.**

---

## 3️⃣ INTERSECT

* Returns only rows that appear in **both** queries.
* Intersection of A and B.

```sql
SELECT name FROM A
INTERSECT
SELECT name FROM B;
```

### Result:

| name  |
| ----- |
| Bob   |
| Carol |

> Only rows common to both tables.

---

## 4️⃣ EXCEPT (or MINUS)

* Returns rows from the first query that **do not** appear in the second.
* Difference of A and B.

```sql
SELECT name FROM A
EXCEPT
SELECT name FROM B;
```

### Result:

| name  |
| ----- |
| Alice |

> Rows in A but not in B.

---

# ⚠️ Notes:

* Some databases use `MINUS` instead of `EXCEPT` (Oracle uses `MINUS`).
* Columns and their data types must match in the set operations.
* Ordering can be added after the full operation (not inside each SELECT).

---

Would you like me to explain these operations with more complex examples or with specific database syntax?
