# The name of this view in Looker is "Reach Aggregate Bydate Yearago"
view: reach_aggregate_bydate_yearago {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_bydate_yearago_v2`
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
    sql: date_add(${TABLE}.date,INTERVAL 1 YEAR) ;;
  }

  dimension: days {
    type: string
    sql: FORMAT_DATETIME("%d %B",${TABLE}.date) ;;
    primary_key: yes
  }

  measure: fb_views {
    type: sum
    sql: ${TABLE}.fb_views ;;
  }

  measure: pageviews {
    type: sum
    sql: ${TABLE}.pageviews ;;
  }

  measure: total_views {
    type: sum
    sql: ${TABLE}.total_views ;;
  }

  measure: yt_views {
    type: sum
    sql: ${TABLE}.yt_views ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
