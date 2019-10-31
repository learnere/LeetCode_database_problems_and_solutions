# Write your MySQL query statement below
# S1: find the highest and then find the second highest, return

SELECT max(Salary) as SecondHighestSalary
FROM Employee 
WHERE Salary < (
     SELECT max(Salary)
     FROM Employee
     );

# S2: use limit to return the second highest salary
SELECT max(Salary) as SecondHighestSalary
FROM Employee 
WHERE Salary < (
    SELECT Salary
    FROM Employee
    ORDER BY Salary DESC
    LIMIT 1
    );