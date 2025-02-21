SELECT 
    id,
    customer_id,
    order_date,
    total_amount
FROM {{ source('mydb', 'orders') }}
WHERE total_amount > 50
