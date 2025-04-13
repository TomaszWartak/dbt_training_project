-- models/staging/stg_customers.sql
{{ config(materialized='view') }}

SELECT 
    O_ORDERKEY AS order_id,
    O_CUSTKEY AS customer_id,
    O_ORDERDATE AS order_date,
    O_TOTALPRICE AS order_total
FROM MY_DWH.STAGING.ORDERS_STG