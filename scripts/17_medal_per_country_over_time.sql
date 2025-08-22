SELECT "year", region AS country, COUNT(medal) AS medals_won
FROM athlete_events 
JOIN noc_regions ON athlete_events.noc=noc_regions.noc 
WHERE medal IS NOT NULL
GROUP BY "year", region
ORDER BY "year", medals_won DESC