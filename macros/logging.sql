{% macro log_event(status) %}

  insert into `{{ target.project }}.{{ target.schema }}.dbt_audit_log`
  (
    event_timestamp,
    event_schema,
    event_model,
    event_target,
    event_is_full_refresh,
    invocation_id
  )

  values (
    current_timestamp(),
    '{{ target.schema }}',
    '{{ this.name }}',
    '{{ target.name }}',
    {{ flags.FULL_REFRESH }},
    '{{ invocation_id }}'
  )

{% endmacro %}