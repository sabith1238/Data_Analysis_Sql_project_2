SELECT sport, ROUND(AVG(height), 1) AS average_height, ROUND(AVG(weight::numeric),1) AS average_weight
FROM athlete_events
GROUP BY sport