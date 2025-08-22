SELECT city, COUNT(city) AS total_athletes_hosted
FROM athlete_events
GROUP BY city
ORDER BY COUNT(city) DESC