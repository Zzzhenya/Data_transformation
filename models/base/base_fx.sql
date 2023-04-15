
{{ config(materialized='table') }}


with source_fx_data as (

    select
        _TIME_PERIOD as date_fx,
        _OBS_VALUE as eur_try_rate
    from {{ source('bigquery','raw_fx')}}

)

select *
from source_fx_data

