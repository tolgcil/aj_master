# The name of this view in Looker is "Fb Insight Metrics Test"
view: fb_insight_metrics_test {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.fb_insight_metrics_TEST`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created_on_db {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_on_db ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Insight Type" in Explore.

  dimension: insight_type {
    type: string
    sql: ${TABLE}.insight_type ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: object_id {
    type: string
    sql: ${TABLE}.object_id ;;
  }

  dimension: record_id {
    type: string
    sql: ${TABLE}.record_id ;;
  }

  dimension_group: updated_on_db {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_on_db ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
