SELECT
COUNT(*) as amount,
SUM(total) as total,
SUM(case when mt.status = "cancelled" then 1 else 0 end) as cancelled
FROM my_table mt