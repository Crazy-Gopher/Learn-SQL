CASE
COALESCE
NULLIF
CAST

```
SELECT
    id,
    CASE
        WHEN id % 2 = 1 AND LEAD(student) OVER(ORDER BY id) IS NULL THEN student
        WHEN id % 2 = 1 THEN LEAD(student) OVER(ORDER BY id)
        ELSE LAG(student) OVER(ORDER BY id)
    END AS student
FROM Seat;
```

```
/*
"Leaf": if the node is a leaf node.
"Root": if the node is the root of the tree.
"Inner": If the node is neither a leaf node nor a root node.

Tree table:
+----+------+
| id | p_id |
+----+------+
| 1  | null |
| 2  | 1    |
| 3  | 1    |
| 4  | 2    |
| 5  | 2    |
+----+------+
Output: 
+----+-------+
| id | type  |
+----+-------+
| 1  | Root  |
| 2  | Inner |
| 3  | Leaf  |
| 4  | Leaf  |
| 5  | Leaf  |
+----+-------+
*/
SELECT
    id,
    CASE
        WHEN p_id IS NULL THEN 'Root'
        WHEN id IN (SELECT DISTINCT p_id FROM TREE WHERE p_id IS NOT NULL) THEN 'Inner'
        ELSE 'Leaf'
    END AS type
FROM Tree;
```

```
https://leetcode.com/problems/capital-gainloss/
/* Write your PL/SQL query statement below */

SELECT
    stock_name,
    SUM(CASE WHEN operation = 'Buy' THEN -price ELSE price END)
    AS capital_gain_loss
FROM
    Stocks
GROUP BY
    stock_name;
```