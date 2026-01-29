-- Average age of the passengers
SELECT
    ROUND(AVG(age), 2) AS average_age
FROM titanic
WHERE age IS NOT NULL;
