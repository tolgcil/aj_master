view: reach_aggregate_bydate_lastp {
  sql_table_name: `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_bydate_lastp_v2`
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
