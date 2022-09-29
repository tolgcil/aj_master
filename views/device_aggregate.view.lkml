# The name of this view in Looker is "Device Aggregate"
view: device_aggregate {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ajmn-rs-bq.al_jazeera_data_models_poc.device_aggregate_v2`
    ;;
  dimension: aja_pv {
    type: number
    sql: ${TABLE}.aja_pv ;;
  }

  dimension: aje_pv {
    type: number
    sql: ${TABLE}.aje_pv ;;
  }

  dimension: device_category {
    type: string
    sql: ${TABLE}.deviceCategory ;;
  }

  measure: percent_total {
    type: sum
    sql: ${TABLE}.percent_total ;;
  }

  measure: total_views {
    type: sum
    sql: ${TABLE}.total_views ;;
  }

  measure: yt_views {
    type: sum
    sql: ${TABLE}.yt_views ;;
  }

}
