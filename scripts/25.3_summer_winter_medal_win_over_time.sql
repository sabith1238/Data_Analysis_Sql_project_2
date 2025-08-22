SELECT 
    season,
    year,
    COUNT(medal) AS medals_won
FROM athlete_events
WHERE medal IS NOT NULL
GROUP BY season, year
ORDER BY year, season;