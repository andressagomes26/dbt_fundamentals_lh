with 
    dados_cliente as (
        select 
            id_cliente
            , lower(nm_cliente) as nm_cliente
            , ds_email
            , nu_telefone
            , id_endereco
            , dt_nascimento
            , cast(dt_cadastro as date) as dt_cadastro
            , dt_insercao
            , dt_alteracao
        from {{ source('raw_data','clientes') }}
    )

select *
from dados_cliente