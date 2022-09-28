# The name of this view in Looker is "Top Countries2"
view: top_countries2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ajmn-rs-bq.al_jazeera_data_models_poc.top_countries2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Country" in Explore.

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: percent_total {
    type: number
    sql: ${TABLE}.percent_total ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_percent_total {
    type: sum
    sql: ${percent_total} ;;
  }

  measure: average_percent_total {
    type: average
    sql: ${percent_total} ;;
  }

  measure: total_views {
    type: sum
    sql: ${TABLE}.total_views ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
