UPDATE salary
SET sex=(IF(sex = 'f','m','f'));
SELECT (CASE  WHEN mod(id,2) = 1 AND id= counts THEN id
              WHEN mod(id,2) = 1 AND id != counts THEN id+1
              ELSE id-1
        END) as id, student
FROM seat, (SELECT count(*) as counts FROM seat) as counts
ORDER BY id;