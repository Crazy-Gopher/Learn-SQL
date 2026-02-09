In PostgreSQL, **`LEAD()`** is a **window function** used to “peek forward” and access data from the **next row** (or several rows ahead) *without doing a self-join*.

It is extremely useful for comparing a row with the following row.

---

# ✅ **What LEAD() Does**

`LEAD()` returns the *value from the next row* in the specified window ordering.

Basic syntax:

```sql
LEAD(column_name, offset, default_value) OVER (
    PARTITION BY ...
    ORDER BY ...
)
```

* **column_name** → value to read from the next row
* **offset** → how many rows ahead (default = 1)
* **default_value** → fallback if next row does not exist

---

# 📌 **Simple Example**

Suppose you have this data:

| id | event_time | value |
| -- | ---------- | ----- |
| 1  | 10:00      | 100   |
| 2  | 10:05      | 120   |
| 3  | 10:07      | 115   |

Query:

```sql
SELECT
    id,
    value,
    LEAD(value) OVER (ORDER BY event_time) AS next_value
FROM events;
```

Result:

| id | value | next_value |
| -- | ----- | ---------- |
| 1  | 100   | 120        |
| 2  | 120   | 115        |
| 3  | 115   | NULL       |

---

# 🎯 **Common Interview Uses of LEAD()**

### 1️⃣ **Find difference between current row and next row**

```sql
SELECT
    event_time,
    value,
    LEAD(value) OVER (ORDER BY event_time) - value AS diff_with_next
FROM events;
```

---

### 2️⃣ **Detect when a status changes**

```sql
SELECT
    user_id,
    status,
    LEAD(status) OVER (PARTITION BY user_id ORDER BY timestamp) AS next_status
FROM user_status;
```

Useful for sessionization.

---

### 3️⃣ **Find time gap between events**

```sql
SELECT
    user_id,
    event_time,
    LEAD(event_time) OVER (PARTITION BY user_id ORDER BY event_time) 
        - event_time AS time_diff
FROM logs;
```

---

### 4️⃣ **Identify last record per group**

```sql
LEAD(event_time) OVER (...) IS NULL
```

---

# 🔥 LEAD() vs LAG()

* `LEAD()` → looks **ahead**
* `LAG()` → looks **behind**

Together they solve 95% time-series interview SQL problems.

---