# The name of this view in Looker is "Predictions 2022 09 27 T03 27 00 822 Z 730"
view: predictions_2022_09_27_t03_27_00_822_z_730 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.predictions_2022_09_27T03_27_00_822Z_730`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Date" in Explore.

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: predicted_on_date {
    type: string
    sql: ${TABLE}.predicted_on_date ;;
  }

  dimension: predicted_view_counts__value {
    type: number
    sql: ${TABLE}.predicted_view_counts.value ;;
    group_label: "Predicted View Counts"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_predicted_view_counts__value {
    type: sum
    sql: ${predicted_view_counts__value} ;;
  }

  measure: average_predicted_view_counts__value {
    type: average
    sql: ${predicted_view_counts__value} ;;
  }

  dimension: view_counts {
    type: string
    sql: ${TABLE}.view_counts ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
