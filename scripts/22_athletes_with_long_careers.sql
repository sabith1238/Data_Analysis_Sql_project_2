SELECT 
    id,
    name,
    MIN(year) AS first_year,
    MAX(year) AS last_year,
    (MAX(year) - MIN(year)) AS career_length
FROM athlete_events
GROUP BY id, name
ORDER BY career_length DESC, first_year ASC
