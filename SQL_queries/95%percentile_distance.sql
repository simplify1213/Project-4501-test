
WITH two AS 
(SELECT pickup_datetime,distance FROM uber
WHERE "2013-06-30T00:00"< pickup_datetime AND pickup_datetime < '2013-07-31T00:00:00'
UNION ALL
SELECT pickup_datetime,distance FROM taxi
WHERE "2013-06-30T00:00"<pickup_datetime AND pickup_datetime < '2013-07-31T00:00:00')

SELECT distance AS '95%distance'FROM two
ORDER BY distance 
LIMIT 1
OFFSET (SELECT COUNT(*)
        FROM two) * 95 / 100 - 1 ;
