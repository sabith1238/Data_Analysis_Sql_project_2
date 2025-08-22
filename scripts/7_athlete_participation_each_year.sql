SELECT YEAR, COUNT(year) AS total_participated
FROM athlete_events
GROUP BY year