-- models/staging/stg_customers_with_countries.sql
{{ config(materialized='view') }}

SELECT 
    C.customer_id,
    C.customer_name,
    CO.country_name AS customer_country
FROM {{ ref('stg_customers') }} AS C
JOIN {{ ref('stg_countries')}} AS CO
    ON C.customer_id = CO.customer_id;
