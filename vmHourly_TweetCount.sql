WITH
  origin AS(
    SELECT 
  DATE(tweet_created) AS tweet_date,
  TIME(tweet_created) AS tweet_time,
  -- TIME_TRUNC(TIME(tweet_created), HOUR) AS tweet_hour,
  -- EXTRACT(HOUR FROM tweet_created),
  CASE
    WHEN EXTRACT(MINUTE FROM tweet_created) > 30 THEN EXTRACT(HOUR FROM tweet_created) + 1
    ELSE EXTRACT(HOUR FROM tweet_created)
  END AS nearest_tweet_hour,
  tweet_text
FROM
`Twitter_New_Year_Resolution_Project.resolutions`
  )

SELECT
  nearest_tweet_hour,
  COUNT(tweet_text) AS number_of_tweet
FROM
  origin
GROUP BY 1
ORDER BY 2 DESC
