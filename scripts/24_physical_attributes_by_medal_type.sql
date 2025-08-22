SELECT sport, ROUND(AVG(height),1) AS average_height, ROUND(AVG(weight::numeric),1) AS average_weight, medal
FROM athlete_events
WHERE medal IS NOT NULL
AND height IS NOT NULL
GROUP BY sport, medal
ORDER BY sport, medal