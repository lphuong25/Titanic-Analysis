SELECT 
    Pclass, 
    COUNT(*) AS Total_Passengers,
    SUM(Survived) AS Total_Survivors,
    ROUND(AVG(Survived) * 100, 2) AS Survival_Rate_Percentage
FROM Titanic
GROUP BY Pclass;