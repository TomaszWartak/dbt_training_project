-- models/staging/stg_customers.sql
{{ config(materialized='view') }}

SELECT 
    C_CUSTKEY AS customer_id,
	C_NAME AS customer_name,
    C_ADDRESS AS customer_address,
   	C_PHONE AS phone_number,
	C_NATIONKEY AS country_id
FROM MY_DWH.STAGING.CUSTOMER_STG
