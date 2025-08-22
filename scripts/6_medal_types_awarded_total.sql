SELECT medal, COUNT(medal) AS total_awarded
FROM athlete_events 
WHERE medal IS NOT NULL
GROUP BY medal
