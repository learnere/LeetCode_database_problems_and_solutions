SELECT tb2.Name as "Department", tb1.Name as "Employee",tb1.Salary as "Salary"
FROM Employee AS tb1
LEFT JOIN Department AS tb2
ON tb1.DepartmentId = tb2.Id
WHERE(tb2.Id,tb1.Salary) IN (SELECT DepartmentId, max(Salary)
                            FROM Employee
                            GROUP BY DepartmentId);
# ORDER BY tb1.Salary DESC
# LIMIT 0,3;