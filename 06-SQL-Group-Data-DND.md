# GROUP DATA
https://leetcode.com/problems/movie-rating/description/

## GROUP BY
You can use any aggrigate function max, min, count, sum, avg with group by.
```
SELECT
	DEPARTMENT_ID,
	COUNT(SALARY) AS TOTAL
FROM
	EMPLOYEETRACKER.EMPLOYEE
GROUP BY
	DEPARTMENT_ID
```

## HAVING
```
SELECT
	DEPARTMENT_ID,
	COUNT(SALARY) AS TOTAL
FROM
	EMPLOYEETRACKER.EMPLOYEE
GROUP BY
	DEPARTMENT_ID
HAVING 
	COUNT(SALARY) > 2
```

```
SELECT
	DEPARTMENT_ID,
	AVG(SALARY) AS TOTAL
FROM
	EMPLOYEETRACKER.EMPLOYEE
GROUP BY
	DEPARTMENT_ID
HAVING 
	AVG(SALARY) > 45000 -- TOTAL > 45000 this does not work in postgres
ORDER BY TOTAL
```

## Extra - Review it once
```
SELECT 
    TO_CHAR(trans_date, 'YYYY-MM') as month,
    country,
    COUNT(*) as trans_count,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END)AS approved_total_amount
FROM Transactions
GROUP BY
    1, 2
```