
CREATE TABLE IF NOT EXISTS hourly_weather (
    id INTEGER PRIMARY KEY,
    date TEXT,
    hourlyprecipitation FLOAT,
    sustainedwindspeed FLOAT
);

CREATE TABLE IF NOT EXISTS daily_weather (
    id INTEGER PRIMARY KEY,
    date TEXT,
    dailyaveragewindspeed FLOAT
);

CREATE TABLE IF NOT EXISTS taxi (
    id INTEGER PRIMARY KEY,
    month INTEGER,
    hour INTEGER,
    year INTEGER,
    pickup_datetime TEXT,
    dropoff_datetime TEXT,
    pickup_latitude FLOAT, 
    pickup_longitude FLOAT,
    dropoff_latitude FLOAT,
    dropoff_longitude FLOAT,
    distance FLOAT,
    tip FLOAT,
    passenger_count INTEGER
);

CREATE TABLE IF NOT EXISTS uber (
    id INTEGER PRIMARY KEY,
    fare_amount FLOAT,
    pickup_datetime TEXT,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,  
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT,
    passenger_count INTEGER,
    date TEXT,
    week INTEGER,
    distance FLOAT
);
