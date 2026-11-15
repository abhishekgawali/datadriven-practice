SELECT 'inner_join' AS join_type, COUNT(*) AS row_count
FROM users u
INNER JOIN ad_impressions a ON a.user_id = u.user_id

UNION ALL

SELECT 'left_join', COUNT(*)
FROM users u
LEFT JOIN ad_impressions a ON a.user_id = u.user_id

UNION ALL

SELECT 'full_outer_join', COUNT(*)
FROM users u
FULL OUTER JOIN ad_impressions a ON a.user_id = u.user_id;
