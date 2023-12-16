with 
    dados_cliente as(
        select id_cliente
            , nm_cliente
            , ds_email
            , nu_telefone
            , id_endereco
            , dt_nascimento
            , dt_cadastro
            , ds_profissao
            , ds_interesses
            , ds_referencia
        from {{ ref('int_clientes') }}
    )
    -- cte para criar chave surrogate primária sk (haseada)
    , chave_sk as (
        select 
            {{ dbt_utils.generate_surrogate_key(['id_cliente', 'ds_email']) }} as vendas_sk
            , *
        from dados_cliente
    )

select * 
from chave_sk
