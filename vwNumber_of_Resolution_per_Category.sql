SELECT
  tweet_category,
  user_gender,
  COUNT(tweet_text) AS number_of_resolutions,
FROM 
  `dataworld-393515.Twitter_New_Year_Resolution_Project.resolutions`
  GROUP BY 1,2
  ORDER BY 3 DESC
