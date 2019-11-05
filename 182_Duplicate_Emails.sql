SELECT distinct(tb1.Email) AS Email
FROM Person AS tb1 
INNER JOIN Person AS tb2
ON tb1.Email = tb2.Email
AND tb1.Id != tb2.Id;