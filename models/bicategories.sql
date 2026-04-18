select {{retorna_campos()}} from {{ref('joins')}}
where category_name = '{{var('category')}}'

--linha de comando
--dbt run --select bicategories --vars '{category: Condiments}'