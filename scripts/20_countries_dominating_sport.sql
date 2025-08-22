WITH country_win_trend AS 
(SELECT sport, noc_regions.region AS country,  COUNT(medal) AS medals_won
FROM athlete_events 
JOIN noc_regions ON athlete_events.noc=noc_regions.noc 
GROUP BY sport, country
ORDER BY sport, medals_won DESC),

country_dominating AS
(SELECT 
    *,
    ROW_NUMBER() OVER(PARTITION BY sport ORDER BY medals_won DESC) AS rn_num
FROM country_win_trend )

SELECT sport, country, medals_won AS most_medals_won
FROM country_dominating 
WHERE rn_num=1