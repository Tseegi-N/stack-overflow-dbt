{{ config(materialized='table') }}

select * from {{ source('stack_overflow_updated', 'posts') }} limit 10