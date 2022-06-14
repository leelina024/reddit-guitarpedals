-- Count of posts per day --
SELECT
  EXTRACT(MONTH FROM created_utc) AS month,
  EXTRACT(DAY FROM created_utc) AS day,
  count(id) as count_posts
FROM reddit_gp
GROUP BY month, day
ORDER BY day

-- Count of posts per hour --
SELECT
  EXTRACT(HOUR FROM created_utc) AS hour,
  COUNT(id) AS count_posts
FROM reddit_gp
GROUP BY hour
ORDER BY hour
