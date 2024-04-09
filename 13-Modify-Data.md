INSERT - Single rows, multiple rows
UPDATE - 
DELETE

-- Upsert, Merge (Snowflake, Postgres)
-- UPDATE Join, DELETE Join (Postgres)


DELETE FROM employee
WHERE 
    (firstname, lastname, salary) 
IN 
    (
        select firstname, lastname, salary 
        FROM employee
    );

