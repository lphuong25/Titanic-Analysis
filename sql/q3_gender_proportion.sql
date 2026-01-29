-- Proportion of male and female passengers
SELECT
    sex,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS proportion
FROM titanic
GROUP BY sex;