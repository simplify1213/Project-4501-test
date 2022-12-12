
WITH ride AS
(SELECT DATE(pickup_datetime) AS date, count(pickup_datetime) AS count from (SELECT pickup_datetime FROM uber
WHERE "2013-12-31T00:00"< pickup_datetime AND pickup_datetime < '2014-12-31T00:00:00'
UNION ALL
SELECT pickup_datetime FROM taxi
WHERE "2013-12-31T00:00"<pickup_datetime AND pickup_datetime < '2014-12-31T00:00:00')
GROUP BY DATE(pickup_datetime))

SELECT * FROM(SELECT DATE(daily_weather.date) AS date, daily_weather.dailyaveragewindspeed,  ride.count
FROM daily_weather 
LEFT OUTER JOIN ride 
ON DATE(daily_weather.date)=DATE(ride.date)
ORDER BY daily_weather.dailyaveragewindspeed DESC
LIMIT 10
)
