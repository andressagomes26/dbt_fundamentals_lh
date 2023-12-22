with 
    dados_pagamento as (
        select *
        from {{ source('raw_data','formas_pagamentos') }}
    )

select *
from dados_pagamento