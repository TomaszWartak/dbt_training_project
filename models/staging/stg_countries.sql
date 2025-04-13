-- models/staging/stg_countries.sql
{{ config(materialized='view') }}

SELECT
    N_NATIONKEY AS country_id,
	N_NAME AS country_name
FROM MY_DWH.STAGING.NATION_STG