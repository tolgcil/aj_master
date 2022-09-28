# The name of this view in Looker is "Youtube File Logger"
view: youtube_file_logger {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.youtube_file_logger`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Channel ID" in Explore.

  dimension: channel_id {
    type: string
    sql: ${TABLE}.channel_id ;;
  }

  dimension: channel_name {
    type: string
    sql: ${TABLE}.channel_name ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
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
    sql: ${TABLE}.created_on ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.file_name ;;
  }

  dimension: file_row_count {
    type: number
    sql: ${TABLE}.file_row_count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_file_row_count {
    type: sum
    sql: ${file_row_count} ;;
  }

  measure: average_file_row_count {
    type: average
    sql: ${file_row_count} ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.job_name ;;
  }

  dimension_group: loaded {
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
    sql: ${TABLE}.loaded_on ;;
  }

  dimension_group: report_createtime {
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
    sql: ${TABLE}.report_createtime ;;
  }

  dimension_group: report_end {
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
    sql: ${TABLE}.report_end_at ;;
  }

  dimension_group: report_start {
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
    sql: ${TABLE}.report_start_at ;;
  }

  dimension: report_type_id {
    type: string
    sql: ${TABLE}.report_type_id ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_on ;;
  }

  measure: count {
    type: count
    drill_fields: [channel_name, file_name, job_name]
  }
}
