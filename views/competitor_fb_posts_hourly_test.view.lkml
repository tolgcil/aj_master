# The name of this view in Looker is "Competitor Fb Posts Hourly Test"
view: competitor_fb_posts_hourly_test {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.competitor_fb_posts_hourly_TEST`
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
  # This dimension will be called "Comments" in Explore.

  dimension: comments {
    type: number
    sql: ${TABLE}.comments ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_comments {
    type: sum
    sql: ${comments} ;;
  }

  measure: average_comments {
    type: average
    sql: ${comments} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
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
    sql: ${TABLE}.created_time ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}.likes ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: page_id {
    type: string
    sql: ${TABLE}.page_id ;;
  }

  dimension: reactions_angry {
    type: number
    sql: ${TABLE}.reactions_angry ;;
  }

  dimension: reactions_haha {
    type: number
    sql: ${TABLE}.reactions_haha ;;
  }

  dimension: reactions_love {
    type: number
    sql: ${TABLE}.reactions_love ;;
  }

  dimension: reactions_none {
    type: number
    sql: ${TABLE}.reactions_none ;;
  }

  dimension: reactions_sad {
    type: number
    sql: ${TABLE}.reactions_sad ;;
  }

  dimension: reactions_sum {
    type: number
    sql: ${TABLE}.reactions_sum ;;
  }

  dimension: reactions_thankful {
    type: number
    sql: ${TABLE}.reactions_thankful ;;
  }

  dimension: reactions_wow {
    type: number
    sql: ${TABLE}.reactions_wow ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: status_type {
    type: string
    sql: ${TABLE}.status_type ;;
  }

  dimension: story {
    type: string
    sql: ${TABLE}.story ;;
  }

  dimension: story_tags {
    type: string
    sql: ${TABLE}.story_tags ;;
  }

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

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, created_time, name]
  }
}
