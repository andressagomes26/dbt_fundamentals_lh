with
    dates_raw as (
        {{
            dbt_utils.date_spine(
                datepart="day",
                start_date="cast('2000-01-01' as date)",
                end_date="date_add(current_date(), interval 5 year)"
            )
        }}
    )

    , days_info as (
        select
            cast(date_day as date) as dt_referencia
            , extract(dayofweek from date_day) as nu_dia_semana
        from dates_raw
    )