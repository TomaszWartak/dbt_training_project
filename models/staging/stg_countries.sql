-- models/staging/stg_countries.sql
{{ config(materialized='view') }}

SELECT
    N_NATIONKEY AS country_id,
	N_NAME AS contry_name
FROM MY_DWH.STAGING.NATION_STG