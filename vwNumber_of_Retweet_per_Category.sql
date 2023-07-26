SELECT
  tweet_category,
  user_gender,
  SUM(retweet_count) AS total_retweet
FROM
  `Twitter_New_Year_Resolution_Project.resolutions`
GROUP BY 1,2
ORDER BY 3 DESC
