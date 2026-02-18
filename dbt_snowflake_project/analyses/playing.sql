-- {% set incremental_flag = 1 %}
-- {% set incremental_col = 'created_at' %}

-- select * from {{ source('staging', 'BOOKINGS')}}

-- {% if incremental_flag == 1 %}
-- where {{incremental_col}} > (select COALESCE(max({{incremental_col}}),'1900-01-01') from {{ ref('bronze_bookings') }})
-- {% endif    %}

select 1 from {{ source('staging', 'BOOKINGS')}}



