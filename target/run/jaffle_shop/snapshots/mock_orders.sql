
      
  
    

        create or replace transient table analytics.dbt_swiesner_snapshot.mock_orders  as
        (

    select *,
        md5(coalesce(cast(order_id as varchar ), '')
         || '|' || coalesce(cast(updated_at as varchar ), '')
        ) as dbt_scd_id,
        updated_at as dbt_updated_at,
        updated_at as dbt_valid_from,
        nullif(updated_at, updated_at) as dbt_valid_to
    from (
        





select * from analytics.dbt_swiesner.mock_orders

    ) sbq



        );
      
  
  