
--{{ config(materialized='table') }}


--with source_data as (

--    select
--        *,
--        'TRY' as currency,
--    from {{ source('bigquery','raw_shopping_data')}}

--)

--select *
--from source_data

SELECT *
FROM {{ source('bigquery','raw_shopping_data')}}
LIMIT 100

