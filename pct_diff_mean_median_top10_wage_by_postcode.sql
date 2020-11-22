/*
Query to show super balance differences are disproportionately higher compared to wage differences
*/

SELECT
  postcode,
  avg_wages,
  median_wages,
  ROUND((avg_wages - median_wages)/avg_wages*100,1) AS pct_wage_diff,
  avg_super_balance AS avg_super,
  median_super_balance AS mid_super,
  ROUND((avg_super_balance - median_super_balance)/avg_super_balance*100, 1) AS pct_super_diff
FROM
  `datapipeline-250511.lake.ato2017-18individual`
ORDER BY
  avg_wages DESC
LIMIT
  10