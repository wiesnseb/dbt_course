
  create or replace   view dbt.dbt_swiesner.test
  
   as (
    select * from raw.jaffle_shop.customers
  );

