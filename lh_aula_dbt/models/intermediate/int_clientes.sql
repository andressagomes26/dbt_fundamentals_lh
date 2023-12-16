with 
    dados_cliente as (
        select 
            id_cliente
            , nm_cliente
            , ds_email
            , nu_telefone
            , id_endereco
            , dt_nascimento
            , dt_cadastro
            , dt_insercao
            , dt_alteracao
        from {{ ref('stg_dbrut_clientes') }}
    )

    , dados_cliente_info as (
        select 
            id_cliente
            , ds_profissao
            , ds_interesses
            , ds_referencia
            , dt_insercao
            , dt_alteracao
        from {{ ref('stg_dbrut_clientes_info') }}
    )

    , final_join as (
        select 
            dados_cliente.id_cliente
            , dados_cliente.nm_cliente
            , dados_cliente.ds_email
            , dados_cliente.nu_telefone
            , dados_cliente.id_endereco
            , dados_cliente.dt_nascimento
            , dados_cliente.dt_cadastro
            , dados_cliente_info.ds_profissao
            , dados_cliente_info.ds_interesses
            , dados_cliente_info.ds_referencia
        from dados_cliente
        left join dados_cliente_info
            on dados_cliente.id_cliente = dados_cliente_info.id_cliente
    )

select *
from final_join 
