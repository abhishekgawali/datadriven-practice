SELECT
    log_id,
    edge_loc,
    req_path,
    status,
    SUM(bytes) as total_bytes,
    cache_hit,
    served_at

FROM cdn_logs
WHERE YEAR(served_at) = 2026
group by 1,2 ,3 
ORDER BY total_bytes desc
limit 1
