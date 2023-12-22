select vr_total
from {{ ref('fvt_vendas') }}
where vr_total < 0