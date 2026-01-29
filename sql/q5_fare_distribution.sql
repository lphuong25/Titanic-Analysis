-- Distribution of the fare paid by the passengers
SELECT
    CASE
        WHEN fare < 10 THEN 'Under 10'
        WHEN fare BETWEEN 10 AND 30 THEN '10 to 30'
        WHEN fare BETWEEN 30 AND 60 THEN '30 to 60'
        WHEN fare BETWEEN 60 AND 100 THEN '60 to 100'
        WHEN fare >= 100 THEN 'Over 100'
    END AS fare_range,
    COUNT(*) AS passenger_count
    
FROM titanic
WHERE fare IS NOT NULL
GROUP BY fare_range
ORDER BY passenger_count DESC;