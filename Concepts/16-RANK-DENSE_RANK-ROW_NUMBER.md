## 🎯 **Main Differences**

| Function       | Handles Duplicates? | Gaps in Rank? | Returns                                    |
| -------------- | ------------------- | ------------- | ------------------------------------------ |
| `RANK()`       | Yes                 | Yes           | Same rank for duplicates, skips next ranks |
| `DENSE_RANK()` | Yes                 | **No**        | Same rank for duplicates, **no skips**     |
| `ROW_NUMBER()` | **No**              | N/A           | Always unique and sequential               |

---

## 📊 Example

Suppose you have the following `emp` table:

| emp\_id | name  | salary |
| ------- | ----- | ------ |
| 1       | Alice | 100000 |
| 2       | Bob   | 90000  |
| 3       | Carol | 90000  |
| 4       | Dave  | 85000  |
| 5       | Evan  | 80000  |

### SQL:

```sql
SELECT name, salary,
       RANK() OVER (ORDER BY salary DESC) AS rnk,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rnk,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM emp;
```

### 🔽 Output:

| name  | salary | RANK | DENSE\_RANK | ROW\_NUMBER |
| ----- | ------ | ---- | ----------- | ----------- |
| Alice | 100000 | 1    | 1           | 1           |
| Bob   | 90000  | 2    | 2           | 2           |
| Carol | 90000  | 2    | 2           | 3           |
| Dave  | 85000  | 4    | 3           | 4           |
| Evan  | 80000  | 5    | 4           | 5           |

---

## 🔍 Breakdown:

### ✅ `RANK()`

* **Duplicates get same rank**
* **Next rank is skipped**
* Carol and Bob have same salary → both get rank 2.
* Next rank is **4** (skips 3).

### ✅ `DENSE_RANK()`

* **Duplicates get same rank**
* **No skips**
* Bob and Carol → both get 2.
* Dave gets 3, Evan gets 4.

### ✅ `ROW_NUMBER()`

* **No duplicates allowed**
* Strict sequence: 1, 2, 3, 4, 5 — even if salaries are same.

---

## 🤔 When to Use What?

| Use Case                                           | Function       |
| -------------------------------------------------- | -------------- |
| Need unique row IDs (e.g., for pagination)         | `ROW_NUMBER()` |
| Want rankings **with gaps** (e.g., contest ranks)  | `RANK()`       |
| Want rankings **without gaps** (e.g., leaderboard) | `DENSE_RANK()` |
