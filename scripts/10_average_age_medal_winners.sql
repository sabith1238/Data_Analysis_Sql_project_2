SELECT medal, ROUND(AVG(age),1) AS average_age_of_winners
FROM athlete_events
WHERE medal IS NOT NULL
GROUP BY medal