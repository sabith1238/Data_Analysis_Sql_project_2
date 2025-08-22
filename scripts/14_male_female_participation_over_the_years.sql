SELECT "year", sex, COUNT(sex)
FROM athlete_events 
GROUP BY sex, "year"