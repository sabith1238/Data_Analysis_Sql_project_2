SELECT 
    noc_regions.region AS country,
    season,
    COUNT(medal) AS medals_won
FROM athlete_events
JOIN noc_regions ON athlete_events.noc=noc_regions.noc
WHERE medal IS NOT NULL
GROUP BY country, season
ORDER BY season, medals_won DESC;
