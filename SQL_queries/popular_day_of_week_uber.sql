
SELECT week, COUNT(week) FROM (SELECT DISTINCT week,date FROM uber
WHERE date BETWEEN "2009-01-01" AND "2015-07-01" )
GROUP BY week
ORDER BY COUNT(week) DESC