SELECT id, name, COUNT(DISTINCT(games))
FROM athlete_events 
GROUP BY id, name
HAVING COUNT(DISTINCT(games))>1
