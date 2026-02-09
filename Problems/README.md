# [175. Combine Two Tables](https://leetcode.com/problems/combine-two-tables/description/)
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

# [176. Second Highest Salary](https://leetcode.com/problems/second-highest-salary/description/)
```
SELECT
    MAX(salary) as SecondHighestSalary 
FROM Employee
WHERE
    salary != (SELECT MAX(SALARY) FROM EMPLOYEE)
```

---

# [177. Nth Highest Salary](https://leetcode.com/problems/nth-highest-salary/description/)
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