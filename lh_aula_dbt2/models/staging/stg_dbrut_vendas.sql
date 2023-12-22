with 
    dados_vendas as (
        select *
        from {{ source('raw_data','vendas') }}
    )

select *
from dados_vendas