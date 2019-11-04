SELECT tb1.Score AS Score, (
							SELECT count(distinct tb2.Score)
							FROM Scores AS tb2
							WHERE tb2.Score>tb1.Score
)+1 AS Rank
FROM Scores as tb1
ORDER BY tb1.Score DESC;



