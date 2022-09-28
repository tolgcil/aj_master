# The name of this view in Looker is "Test Platform Media Temp Test"
view: test_platform_media_temp_test {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.TEST_platform_media_temp_TEST`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

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
  # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
  }

  dimension: duration_ms {
    type: number
    sql: ${TABLE}.duration_ms ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_duration_ms {
    type: sum
    sql: ${duration_ms} ;;
  }

  measure: average_duration_ms {
    type: average
    sql: ${duration_ms} ;;
  }

  dimension: media_id {
    type: string
    sql: ${TABLE}.media_id ;;
  }

  dimension: media_type {
    type: string
    sql: ${TABLE}.media_type ;;
  }

  dimension: media_url {
    type: string
    sql: ${TABLE}.media_url ;;
  }

  dimension: platform_channel_record_key {
    type: string
    sql: ${TABLE}.platform_channel_record_key ;;
  }

  dimension: platform_media_record_key {
    type: string
    sql: ${TABLE}.platform_media_record_key ;;
  }

  dimension: programme {
    type: string
    sql: ${TABLE}.programme ;;
  }

  dimension: programme_type {
    type: string
    sql: ${TABLE}.programme_type ;;
  }

  dimension_group: published {
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
    sql: ${TABLE}.published_at ;;
  }

  dimension: slug_code {
    type: string
    sql: ${TABLE}.slug_code ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
