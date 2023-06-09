{% set a_query %}
  select * from {{ ref('data_compare_relations__a_relation') }}
{% endset %}

{% set b_query %}
  select * from {{ ref('data_compare_relations__b_relation') }}
{% endset %}

{{ audit_helper.compare_queries(
    a_query=a_query,
    b_query=b_query,
    primary_key=dbt_utils.generate_surrogate_key(['col_a', 'col_b']),
    summarize=false
) }}
