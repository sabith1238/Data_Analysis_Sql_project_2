SELECT 
    season,
    COUNT(medal) AS total_medals,
    COUNT(DISTINCT noc) AS total_countries_with_medals,
    COUNT(DISTINCT sport) AS sports_with_medals
FROM athlete_events
WHERE medal IS NOT NULL
GROUP BY season;







