SELECT sport, ROUND(AVG(height),1) AS average_height, COUNT(medal) AS medals_won
FROM athlete_events
WHERE medal IS NOT NULL
AND height IS NOT NULL
GROUP BY sport
ORDER BY average_height DESC
