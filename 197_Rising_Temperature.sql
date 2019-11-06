SELECT w1.Id as "Id"
FROM Weather as w1
INNER JOIN Weather as w2
ON w1.Temperature > w2.Temperature AND DATEDIFF(w1.RecordDate, w2.RecordDate)=1
WHERE w1.RecordDate > w2.RecordDate;