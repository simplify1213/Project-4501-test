
WITH RECURSIVE ride AS ( 
SELECT COUNT(id),strftime ("%Y-%m-%d %H",pickup_datetime) AS Hour
FROM taxi
WHERE "2012-10-22"< pickup_datetime AND pickup_datetime < '2012-10-31'
UNION ALL
SELECT COUNT(id), strftime ("%Y-%m-%d %H",pickup_datetime) AS Hour
FROM uber
WHERE "2012-10-22"< pickup_datetime AND pickup_datetime < '2012-10-31'
GROUP BY Hour
ORDER BY Hour
)
Select * FROM ride
JOIN  (select strftime ("%Y-%m-%d %H",date) AS H ,hourlyprecipitation,sustainedwindspeed from hourly_weather) on Hour = H

