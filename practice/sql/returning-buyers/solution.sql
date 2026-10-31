WITH first_second_transaction AS (
    SELECT
        user_id,
        CAST(transaction_date AS DATE) AS curr_date,
        CAST(LEAD(CAST(transaction_date AS DATE),1)
            OVER (
                PARTITION BY user_id
                ORDER BY CAST(transaction_date AS DATE)
            ) as date) AS second_transaction 
    FROM transactions
)

SELECT DISTINCT
    user_id
FROM first_second_transaction
where JULIANDAY(second_transaction) -JULIANDAY(curr_date) 
between 1 and 7
