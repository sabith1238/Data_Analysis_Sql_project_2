SELECT medal, country, total_medals_won
FROM (
    SELECT 
        medal,
        noc_regions.region AS country,
        COUNT(medal) AS total_medals_won,
        ROW_NUMBER() OVER (PARTITION BY medal ORDER BY COUNT(medal) DESC) AS rn
    FROM athlete_events
    JOIN noc_regions ON athlete_events.noc = noc_regions.noc
    WHERE medal IS NOT NULL
    GROUP BY medal, noc_regions.region
) AS ranked
WHERE rn = 1;
