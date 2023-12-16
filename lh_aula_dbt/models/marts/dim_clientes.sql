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
    -- cte para criar chave surrogate primária
    , chave_sk as (
        select *
        from dados_cliente
    )

select * 
from chave_sk
