-- Survival rate of passengers
SELECT 
    SUM(CASE WHEN survived = 1 THEN 1 ELSE 0 END) AS survived_passengers,
    ROUND(AVG(survived) * 100, 2) AS survival_rate
FROM titanic;