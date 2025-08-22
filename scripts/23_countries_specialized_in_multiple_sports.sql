WITH country_sport_medals AS (
    SELECT noc_regions.region AS noc, sport, COUNT(medal) AS medal_count
    FROM athlete_events
    JOIN noc_regions ON athlete_events.noc=noc_regions.noc
    WHERE medal IS NOT NULL
    GROUP BY noc_regions.region, sport
)
, country_summary AS (
    SELECT 
        noc,
        SUM(medal_count) AS total_medals,
        COUNT(DISTINCT sport) AS sports_count,
        MAX(medal_count) AS top_sport_medals
    FROM country_sport_medals
    GROUP BY noc
)
SELECT 
    noc AS country,
    total_medals,
    sports_count,
    top_sport_medals,
    ROUND(100.0 * top_sport_medals / total_medals, 2) AS specialization_ratio
FROM country_summary
ORDER BY specialization_ratio DESC;
