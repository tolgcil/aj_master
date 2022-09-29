# The name of this view in Looker is "Reach Aggregate Byalias Change"
view: reach_aggregate_byalias_change {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_byalias_change_v2`
    ;;
  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  measure: fb_percent {
    type: sum
    sql: ${TABLE}.fb_percent ;;
  }

  measure: fb_views {
    type: sum
    sql: ${TABLE}.fb_views ;;
  }

  measure: pageviews {
    type: sum
    sql: ${TABLE}.pageviews ;;
  }

  measure: pop_change {
    type: sum
    sql: ${TABLE}.pop_change ;;
  }

  measure: pv_percent {
    type: sum
    sql: ${TABLE}.pv_percent ;;
  }

  measure: total_percent {
    type: sum
    sql: ${TABLE}.total_percent ;;
  }

  measure: total_views {
    type: sum
    sql: ${TABLE}.total_views ;;
  }

  measure: yoy_change {
    type: sum
    sql: ${TABLE}.yoy_change ;;
  }

  measure: yt_percent {
    type: sum
    sql: ${TABLE}.yt_percent ;;
  }

  measure: yt_views {
    type: sum
    sql: ${TABLE}.yt_views ;;
  }

}
