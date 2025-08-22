SELECT sex, COUNT(sex) AS total
FROM athlete_events
GROUP BY sex;