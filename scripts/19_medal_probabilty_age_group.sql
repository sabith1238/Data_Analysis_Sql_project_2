WITH age_medals AS 
(SELECT DISTINCT age, COUNT(medal) AS medals_num
FROM athlete_events
WHERE age IS NOT NULL
GROUP BY age),

age_group_medals AS 
(SELECT 
    *,
    CASE
        WHEN age<20 THEN '<20'
        WHEN age BETWEEN 20 AND 25 THEN '20-25'
        WHEN age BETWEEN 25 AND 30 THEN '25-30'
        ELSE '>30'
    END AS age_group
FROM age_medals
ORDER BY medals_num DESC)

SELECT age_group, SUM(medals_num) AS total_medals_won
FROM age_group_medals 
GROUP BY age_group
ORDER BY total_medals_won DESC

    
    