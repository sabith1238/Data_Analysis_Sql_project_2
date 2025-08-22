WITH sport_trends AS (
    SELECT sport, year, COUNT(DISTINCT id) AS num_of_athletes
    FROM athlete_events
    GROUP BY sport, year
),
ranked AS (
    SELECT sport, year, num_of_athletes,
           ROW_NUMBER() OVER (PARTITION BY sport ORDER BY year ASC) AS rn_asc,
           ROW_NUMBER() OVER (PARTITION BY sport ORDER BY year DESC) AS rn_desc
    FROM sport_trends
)
SELECT 
    sport,
    MIN(year) FILTER (WHERE rn_asc = 1) AS first_year,
    MIN(year) FILTER (WHERE rn_desc = 1) AS last_year,
    MIN(num_of_athletes) FILTER (WHERE rn_asc = 1) AS start_value,
    MIN(num_of_athletes) FILTER (WHERE rn_desc = 1) AS end_value,
    (MIN(num_of_athletes) FILTER (WHERE rn_desc = 1) - MIN(num_of_athletes) FILTER (WHERE rn_asc = 1)) AS net_change
FROM ranked
GROUP BY sport
ORDER BY net_change DESC;
