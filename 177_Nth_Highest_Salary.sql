CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE m INT;
SET m = N -1;
  RETURN (
      SELECT Salary as getNthHighestSalary
      FROM Employee
      GROUP BY Salary
      ORDER BY Salary DESC
      LIMIT m,1 
  );
END

# LIMIT (N-1),1 not allowed 
# therefore, declare an m