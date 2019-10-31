SELECT tb1.FirstName as 'FirstName', tb1.LastName as 'LastName', tb2.City as 'City', tb2.State as 'State'
FROM Person as tb1
LEFT JOIN Address as tb2
ON tb1.PersonId = tb2.PersonId;