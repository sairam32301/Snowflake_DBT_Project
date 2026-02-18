{{ config(materialized='incremental',
   unique_key=  'listing_id') }}

select
   LISTING_ID,
   HOST_ID, 
   PROPERTY_TYPE, 
   ROOM_TYPE, 
   CITY, 
   COUNTRY, 
   ACCOMMODATES, 
   BEDROOMS, 
   BATHROOMS, 
   PRICE_PER_NIGHT, 
   {{ tag('PRICE_PER_NIGHT') }} as price_per_night_tag,
   CREATED_AT
from {{ source('staging', 'LISTINGS') }}
    