# The name of this view in Looker is "Reach Aggregate Byalias Lastpx"
view: reach_aggregate_byalias_lastpx {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_byalias_lastpx`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alias" in Explore.

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: fb_percent {
    type: number
    sql: ${TABLE}.fb_percent ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fb_percent {
    type: sum
    sql: ${fb_percent} ;;
  }

  measure: average_fb_percent {
    type: average
    sql: ${fb_percent} ;;
  }

  dimension: fb_views {
    type: number
    sql: ${TABLE}.fb_views ;;
  }

  dimension: pageviews {
    type: number
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

  dimension: total_views {
    type: number
    sql: ${TABLE}.total_views ;;
  }

  dimension: yt_percent {
    type: number
    sql: ${TABLE}.yt_percent ;;
  }

  dimension: yt_views {
    type: number
    sql: ${TABLE}.yt_views ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
