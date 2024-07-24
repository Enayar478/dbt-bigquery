{{ config(materialized='view') }}

with source as (

    select * from {{ source('gz_raw_data', 'aw_gz_product') }}

),

renamed as (

    select
        products_id as pdt_id,
        purchse_price as purchase_cost

    from source

)

select * from renamed