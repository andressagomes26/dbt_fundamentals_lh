with 
    dados_cliente as(
        select * 
        from {{ ref('int_clientes') }}
    )

select * 
from dados_cliente
