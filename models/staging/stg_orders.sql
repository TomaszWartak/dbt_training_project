-- models/staging/stg_orders.sql
{{ config(materialized='view') }}

SELECT 
    O_ORDERKEY AS order_id,
    O_CUSTKEY AS customer_id,
    O_ORDERDATE AS order_date,
    O_ORDERSTATUS AS order_status,
    O_ORDERPRIORITY AS order_prioriity
    O_TOTALPRICE AS order_total
FROM MY_DWH.STAGING.ORDERS_STG
