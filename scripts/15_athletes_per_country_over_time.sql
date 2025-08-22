SELECT "year", region AS country, COUNT(athlete_events.noc) AS total_athletes
FROM athlete_events 
JOIN noc_regions ON athlete_events.noc=noc_regions.noc 
GROUP BY "year", region
ORDER BY "year", region