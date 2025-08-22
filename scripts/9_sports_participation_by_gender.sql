SELECT sex, sport, COUNT(sex) AS total_participated
FROM athlete_events
GROUP BY sex, sport
ORDER BY sex, sport