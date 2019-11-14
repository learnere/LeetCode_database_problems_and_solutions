SELECT t1.Request_at as Day, round(sum(t1.Status != "completed")/count(*),2) as 'Cancellation Rate'
FROM Trips as t1
INNER JOIN Users as t2 on t1.Client_Id = t2.Users_Id AND t2.Banned ='No'
INNER JOIN Users as t3 on t1.Driver_Id = t3.Users_Id AND t3.Banned ='No'
WHERE t1.Request_at BETWEEN "2013-10-01" AND "2013-10-03"
GROUP BY t1.Request_at
ORDER BY Day;
    