SELECT tb2.Name as "Department", tb1.Name as "Employee", tb1.Salary as "Salary"
FROM Employee as tb1
INNER JOIN Department as tb2
ON tb1.DepartmentId = tb2.Id
WHERE (SELECT Count(distinct Salary)
      FROM Employee as tb3
      WHERE tb3.DepartmentId = tb1.DepartmentId AND tb3.Salary > tb1.Salary) < 3;