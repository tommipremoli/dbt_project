SELECT 
    customer_id,
    SUM(total_amount) AS total_spent
FROM {{source('mydb', 'orders') }}
GROUP BY customer_id
ORDER BY total_spent DESC