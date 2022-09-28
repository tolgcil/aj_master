# The name of this view in Looker is "Reach Aggregate Byperiod History"
view: reach_aggregate_byperiod_history {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_byperiod_history_v2`
    ;;
  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  measure: facebook_views {
    type: sum
    sql: ${TABLE}.facebook_views ;;
  }

  measure: page_views {
    type: sum
    sql: ${TABLE}.page_views ;;
  }

  measure: record_count {
    type: sum
    sql: ${TABLE}.record_count ;;
  }

  measure: total_views {
    type: sum
    sql: ${TABLE}.total_views ;;
  }

  measure: youtube_views {
    type: sum
    sql: ${TABLE}.youtube_views ;;
  }

}
