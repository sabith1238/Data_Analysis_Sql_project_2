SELECT sport, COUNT(sport) AS total
FROM athlete_events
GROUP BY sport