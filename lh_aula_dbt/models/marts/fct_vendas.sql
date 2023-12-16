with 
    dados_venda as (
        select *
        from {{ ref('stg_dbrut_vendas') }}
    )

    , dados_pagamento as (
        select *
        from {{ ref('stg_dbrut_formas_pagamento') }}
    )

    , dim_clientes as (
        select *
        from {{ ref('dim_clientes') }}
    )

    , regra_negocio as (
        -- cte para criar valor total
        select
            dados_venda.id_venda
            , dados_venda.dt_venda
            , dados_venda.id_vendedor
            , dados_venda.id_cliente
            , dados_venda.id_loja
            , dados_venda.id_produto
            , dados_venda.nu_itens
            , dados_venda.vr_unitario
            , round(dados_venda.nu_itens * (
                dados_venda.vr_unitario - dados_venda.vr_desconto
            ), 2) as vr_total
            , dados_venda.id_endereco_entrega
            , dados_venda.id_forma_pagamento
            , dados_pagamento.nm_forma_pagamento
            , dados_venda.id_status_pedido
            , dados_venda.dt_insercao
            , dados_venda.dt_alteracao
        from dados_venda
        left join dados_pagamento 
            on dados_venda.id_forma_pagamento = dados_pagamento.id_forma_pagamento
    )
    
    , chaves as (
        select
            {{ dbt_utils.generate_surrogate_key(['id_venda']) }} as venda_sk
            , regra_negocio.*
            , dim_clientes.cliente_sk as cliente_fk
        from regra_negocio
        left join dim_clientes 
            on regra_negocio.id_cliente = dim_clientes.id_cliente
    )

select *
from chaves
