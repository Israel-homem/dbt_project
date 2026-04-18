{% macro retorna_campos() %}
{{
    return('
        category_name,
        supplyers,
        product_name,
        product_id
    ')
}}
{% endmacro %}