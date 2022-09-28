# The name of this view in Looker is "Youtube Video Device Type and Operating System"
view: youtube_video_device_type_and_operating_system {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.youtube_video_device_type_and_operating_system`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Average View Duration Percentage" in Explore.

  dimension: average_view_duration_percentage {
    type: number
    sql: ${TABLE}.average_view_duration_percentage ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_average_view_duration_percentage {
    type: sum
    sql: ${average_view_duration_percentage} ;;
  }

  measure: average_average_view_duration_percentage {
    type: average
    sql: ${average_view_duration_percentage} ;;
  }

  dimension: average_view_duration_seconds {
    type: number
    sql: ${TABLE}.average_view_duration_seconds ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.channel_id ;;
  }

  dimension: claimed_status {
    type: string
    sql: ${TABLE}.claimed_status ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

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

  dimension: device_type {
    type: number
    sql: ${TABLE}.device_type ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: live_or_on_demand {
    type: string
    sql: ${TABLE}.live_or_on_demand ;;
  }

  dimension: operating_system {
    type: number
    sql: ${TABLE}.operating_system ;;
  }

  dimension: platform_channel_record_key {
    type: string
    sql: ${TABLE}.platform_channel_record_key ;;
  }

  dimension: record_id {
    type: string
    sql: ${TABLE}.record_id ;;
  }

  dimension: red_views {
    type: number
    sql: ${TABLE}.red_views ;;
  }

  dimension: red_watch_time_minutes {
    type: number
    sql: ${TABLE}.red_watch_time_minutes ;;
  }

  dimension: subscribed_status {
    type: string
    sql: ${TABLE}.subscribed_status ;;
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

  dimension: uploader_type {
    type: string
    sql: ${TABLE}.uploader_type ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  dimension: watch_time_minutes {
    type: number
    sql: ${TABLE}.watch_time_minutes ;;
  }

  dimension_group: youtube_record {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.youtube_record_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
