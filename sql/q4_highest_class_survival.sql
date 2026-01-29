-- Class of passengers with the highest survival rate
SELECT
    pclass,
    ROUND(AVG(survived) * 100, 2) AS survival_rate
FROM titanic
GROUP BY pclass
ORDER BY survival_rate DESC
LIMIT 1;
