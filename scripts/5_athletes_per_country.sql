SELECT region AS country, COUNT(athlete_events.noc) AS country_total
FROM athlete_events 
JOIN noc_regions ON athlete_events.noc=noc_regions.noc 
GROUP BY region