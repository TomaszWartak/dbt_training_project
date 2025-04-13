-- models/staging/orders_summary.sql
{{ config(materialized='table') }}

SELECT
    C.customer_name,
    C.country_name
    count(*) as order_count,
    sum(order_total) as total_revenue
FROM {{ ref('stg_orders') }} AS O
JOIN {{ ref('stg_customers_with_countries') }} AS C 
    ON C.customer_id = O.customer_id
GROUP BY customer_name;