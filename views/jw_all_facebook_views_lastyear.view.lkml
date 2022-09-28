# The name of this view in Looker is "Jw All Facebook Views Lastyear"
view: jw_all_facebook_views_lastyear {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ajmn-rs-bq.al_jazeera_data_models_poc.jw_all_facebook_views_lastyear`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: end {
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
    sql: ${TABLE}.end_time ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Name" in Explore.

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: page_video_complete_views_30s {
    type: number
    sql: ${TABLE}.page_video_complete_views_30s ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_page_video_complete_views_30s {
    type: sum
    sql: ${page_video_complete_views_30s} ;;
  }

  measure: average_page_video_complete_views_30s {
    type: average
    sql: ${page_video_complete_views_30s} ;;
  }

  dimension: page_video_complete_views_30s_autoplayed {
    type: number
    sql: ${TABLE}.page_video_complete_views_30s_autoplayed ;;
  }

  dimension: page_video_complete_views_30s_click_to_play {
    type: number
    sql: ${TABLE}.page_video_complete_views_30s_click_to_play ;;
  }

  dimension: page_video_complete_views_30s_organic {
    type: number
    sql: ${TABLE}.page_video_complete_views_30s_organic ;;
  }

  dimension: page_video_complete_views_30s_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.page_video_complete_views_30s_paid ;;
  }

  dimension: page_video_complete_views_30s_repeat_views {
    type: number
    sql: ${TABLE}.page_video_complete_views_30s_repeat_views ;;
  }

  dimension: page_video_complete_views_30s_unique {
    type: number
    sql: ${TABLE}.page_video_complete_views_30s_unique ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
