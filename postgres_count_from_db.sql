
-- get all counts from postgres DB
SELECT relname,
       n_live_tup
FROM   pg_stat_user_tables
WHERE  schemaname = ''
ORDER  BY n_live_up DESC;