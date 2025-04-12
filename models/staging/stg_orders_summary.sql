-- models/staging/orders_summary.sql
{{ config(materialized='table') }}

SELECT
    customer_id,
    count(*) as order_count,
    sum(order_total) as total_revenue
FROM {{ ref('stg_orders') }}
GROUP BY customer_id