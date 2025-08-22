SELECT 
    season,
    medal,
    COUNT(*) AS medal_count
FROM athlete_events
WHERE medal IS NOT NULL
GROUP BY season, medal
ORDER BY season, medal