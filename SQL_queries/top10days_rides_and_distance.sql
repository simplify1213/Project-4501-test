
WITH RECURSIVE ride AS ( 
SELECT id,pickup_datetime,distance
FROM taxi
WHERE "2009-01-1"< pickup_datetime AND pickup_datetime < '2010-01-01'
UNION ALL
SELECT id,pickup_datetime, distance
FROM uber
WHERE "2009-01-1"< pickup_datetime AND pickup_datetime < '2010-01-01'
)

SELECT DATE(pickup_datetime),COUNT(id),avg(distance) FROM ride
GROUP BY DATE(pickup_datetime)
ORDER BY COUNT(id) DESC
LIMIT 10
