with 
    dados_cliente as (
        select 
            id_cliente
            , ds_profissao
            , ds_interesses
            , ds_referencia
            , dt_insercao
            , dt_alteracao
        from {{ source('raw_data','cliente_info') }}
    )

select *
from dados_cliente