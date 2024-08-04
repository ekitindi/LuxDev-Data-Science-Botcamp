-- Find all instances where the weather is clear and the relative humidity is greater than 50, or visibility is above 40
SELECT *
FROM WeatherData2
WHERE 
    Weather_Condition LIKE '%Clear%' 
    AND (Humidity > 50 OR Visibility_km > 40);

--Find the number of records where the wind speed is greater than 24 km/hr and visibility is equal to 25 km.
SELECT COUNT(*) AS record_count
FROM WeatherData2
WHERE Wind_Speed_kmh > 24 
  AND Visibility_km = 25;

  --What is the mean visibility of the dataset?
  SELECT AVG(Visibility_km) AS mean_visibility
FROM WeatherData2;

-- Find the number of times the wind speed was exactly 4 km/hr.
SELECT COUNT(*) AS count_wind_speed_4
FROM WeatherData2
WHERE Wind_Speed_kmh = 4;

--Rename the column "Weather" to "Weather_Condition."
ALTER TABLE WeatherData2
RENAME COLUMN Weather_Condition to Weather;

