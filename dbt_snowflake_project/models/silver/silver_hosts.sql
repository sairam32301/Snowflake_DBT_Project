{{ config(materialized='incremental', unique_key='host_id') }}

select 
   host_id,
   replace(host_name,' ','_') host_name,
   host_since,
   is_superhost,
   response_rate,
   created_at,
   {{ tag('response_rate') }} as response_rate_tag
from {{ source('staging', 'HOSTS') }}
