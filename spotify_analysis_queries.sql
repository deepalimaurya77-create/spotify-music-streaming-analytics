-- =====================================================
-- Spotify Music Artist Streaming Analytics — SQL Queries
-- Platform: Google BigQuery
-- Dataset: 500 global music artists (Kaggle)
-- =====================================================


--Query 1: Top 10 Artists by Total Streams
SELECT
Artist_Name,
Total_Streams_in_millions
FROM
crack-cogency-504515-m6.spotify_analytics.Artists
ORDER BY Total_Streams_in_millions DESC
LIMIT 10;



-- Query 2: Genre-wise Total Streams
SELECT
Primary_Genre,
SUM(Total_streams_in_Millions) AS Total_Streams
FROM
crack-cogency-504515-m6.spotify_analytics.Artists
GROUP BY
Primary_Genre
ORDER BY
Total_Streams DESC;

-- Query 3: Solo vs Collaborative % by Genre
SELECT
  Primary_Genre,
  ROUND(AVG(Percentage_of_Solo_Streams), 2) AS avg_solo_pct,
  ROUND(AVG(Percentage_of_Collaborative_Streams), 2) AS avg_collab_pct
FROM
  `crack-cogency-504515-m6.spotify_analytics.Artists`
GROUP BY
  Primary_Genre
ORDER BY
  avg_solo_pct DESC;


-- Query 4: Country-wise Artist Count
SELECT
Country_of_Origin,
COUNT(Artist_name) AS artist_count 
FROM
`crack-cogency-504515-m6.spotify_analytics.Artists`
GROUP BY
Country_of_Origin
Order by
artist_count DESC

-- Query 5: Debut Year Trend (Total Streams by Debut Year)
SELECT
Debut_year,
SUM(Total_Streams_in_millions) AS total_streams
FROM
crack-cogency-504515-m6.spotify_analytics.Artists
GROUP BY 
Debut_year
ORDER BY
Debut_year desc;

-- Query 6: Language-wise Streams and Artist Count
SELECT
Primary_language,
SUM(Total_Streams_in_millions) AS total_streams,
COUNT(Artist_Name) AS Artist_count
FROM
crack-cogency-504515-m6.spotify_analytics.Artists
GROUP BY
Primary_language
ORDER BY
total_streams DESC;





