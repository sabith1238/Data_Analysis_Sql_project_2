SELECT region AS country, COUNT(medal) AS medals_won
FROM athlete_events 
JOIN noc_regions ON athlete_events.noc=noc_regions.noc 
GROUP BY region
ORDER BY COUNT(medal) DESC