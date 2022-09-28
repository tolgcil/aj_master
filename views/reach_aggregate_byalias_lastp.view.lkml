# The name of this view in Looker is "Reach Aggregate Byalias Lastp"
view: reach_aggregate_byalias_lastp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_byalias_lastp`
    ;;

  dimension: fb_percent {
    type: number
    sql: ${TABLE}.fb_percent ;;
  }

  measure: fb_views {
    type: sum
    sql: ${TABLE}.fb_views ;;
  }
  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  measure: pageviews {
    type: sum
    sql: ${TABLE}.pageviews ;;
  }

  dimension: pv_percent {
    type: number
    sql: ${TABLE}.pv_percent ;;
  }

  dimension: total_percent {
    type: number
    sql: ${TABLE}.total_percent ;;
  }

  measure: total_views {
    type: sum
    sql: ${TABLE}.total_views ;;
  }

  dimension: yt_percent {
    type: number
    sql: ${TABLE}.yt_percent ;;
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
