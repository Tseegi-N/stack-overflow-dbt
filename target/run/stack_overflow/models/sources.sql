
  
    
    

    create  table
      "my_db"."main"."sources__dbt_tmp"
  
    as (
      

select * from "stack_overflow_updated"."raw"."posts" limit 10
    );
  
  