SELECT
  tweet_state,
  COUNT(tweet_text) AS number_of_tweets
FROM
`Twitter_New_Year_Resolution_Project.resolutions`
GROUP BY 1
ORDER BY 2 DESC
