## [175. Combine Two Tables](https://leetcode.com/problems/combine-two-tables/description/)
```
SELECT 
    p.firstName, 
    p.lastName, 
    a.city, 
    a.state
FROM Person p LEFT JOIN Address a
ON p.personId = a.personId
```

---

## [176. Second Highest Salary](https://leetcode.com/problems/second-highest-salary/description/)
```
SELECT
    MAX(salary) as SecondHighestSalary 
FROM Employee
WHERE
    salary != (SELECT MAX(SALARY) FROM EMPLOYEE)
```

---

## [177. Nth Highest Salary](https://leetcode.com/problems/nth-highest-salary/description/)
```
SELECT sal
FROM (
    SELECT
    emp.salary AS sal,
    DENSE_RANK() OVER (ORDER BY emp.salary DESC) AS rnk
    FROM employee emp
) temp
WHERE rnk = N LIMIT 1
```

---

## [178. Rank Scores](https://leetcode.com/problems/rank-scores/description/)
```
SELECT
    score,
    DENSE_RANK() OVER(ORDER BY SCORE DESC) as rank
FROM Scores
ORDER BY score DESC
```

---

## [180. Consecutive Numbers](https://leetcode.com/problems/consecutive-numbers/description/)
```
SELECT
    DISTINCT num AS ConsecutiveNums
FROM (
    SELECT
        num,
        LEAD(num) OVER() AS num1,
        LEAD(num, 2) OVER() AS num2
    FROM
        logs
) 
WHERE num = num1 and num1 = num2
```
OR
```
SELECT
    DISTINCT num AS ConsecutiveNums
FROM (
    SELECT
        num,
        LAG(num) OVER() AS num1,
        LAG(num, 2) OVER() AS num2
    FROM
        logs
) 
WHERE num = num1 and num1 = num2
```

## [184. Department Highest Salary](https://leetcode.com/problems/department-highest-salary/)
```
WITH dpt_salary AS (
    SELECT
        id,
        name,
        salary,
        departmentId,
        RANK() OVER(PARTITION BY departmentID ORDER BY salary DESC) as rank
    FROM
        Employee
)

SELECT 
    dpt.name AS Department,
    emp.name AS Employee,
    emp.salary AS Salary
FROM
    dpt_salary emp INNER JOIN department dpt
    ON emp.departmentId = dpt.id
WHERE emp.rank = 1 
```

---

## [570. Managers with at Least 5 Direct Reports](https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/)
```
SELECT
    m.name as name
FROM employee e 
INNER JOIN employee m ON e.managerId = m.id
WHERE e.managerid IS NOT NULL
GROUP BY m.id, m.name 
HAVING COUNT(e.id) >= 5
```
