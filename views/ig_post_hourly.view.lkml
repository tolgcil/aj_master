# The name of this view in Looker is "Ig Post Hourly"
view: ig_post_hourly {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.ig_post_hourly`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Comments Count" in Explore.

  dimension: comments_count {
    type: number
    sql: ${TABLE}.comments_count ;;
  }

  dimension: engagement {
    type: number
    sql: ${TABLE}.engagement ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_impressions {
    type: sum
    sql: ${impressions} ;;
  }

  measure: average_impressions {
    type: average
    sql: ${impressions} ;;
  }

  dimension: like_count {
    type: number
    sql: ${TABLE}.like_count ;;
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }

  dimension: record_id {
    type: string
    sql: ${TABLE}.record_id ;;
  }

  dimension: saved {
    type: number
    sql: ${TABLE}.saved ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: time_fetched {
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
    sql: ${TABLE}.time_fetched ;;
  }

  dimension: video_views {
    type: number
    sql: ${TABLE}.video_views ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
