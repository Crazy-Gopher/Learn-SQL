# Hierarchical queries
Hierarchical queries are SQL queries that operate on hierarchical or tree-structured data. These queries are commonly used to retrieve information stored in a hierarchical structure, such as organizational charts, file systems, or product categories.

One of the most common examples of hierarchical data is an organizational chart, where each employee reports to another employee, forming a hierarchical relationship.

Let's consider a simple example of an organizational chart stored in a table called employees, where each employee has a unique ID (emp_id) and a manager ID (manager_id) indicating who they report to. The table might look like this:

emp_id	emp_name	manager_id
1	John	NULL
2	Alice	1
3	Bob	1
4	Carol	2
5	David	2
6	Emma	3
In this example:

John is the CEO (manager_id is NULL).
Alice and Bob report directly to John.
Carol and David report to Alice.
Emma reports to Bob.
Now, let's say we want to retrieve all employees and their direct reports, showing the hierarchy. We can use a hierarchical query to achieve this

https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
Yes, can be solved using hierarchical patterns


Hierarchical pattern queries in SQL are typically used to retrieve data from hierarchical or tree-structured data models, such as organizational charts, file systems, or product categories.