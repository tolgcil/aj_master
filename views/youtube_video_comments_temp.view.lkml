# The name of this view in Looker is "Youtube Video Comments Temp"
view: youtube_video_comments_temp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.youtube_video_comments_temp`
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
  # This dimension will be called "Author Channel ID" in Explore.

  dimension: author_channel_id {
    type: string
    sql: ${TABLE}.author_channel_id ;;
  }

  dimension: author_channel_url {
    type: string
    sql: ${TABLE}.author_channel_url ;;
  }

  dimension: author_display_name {
    type: string
    sql: ${TABLE}.author_display_name ;;
  }

  dimension: author_profile_image_url {
    type: string
    sql: ${TABLE}.author_profile_image_url ;;
  }

  dimension: can_rate {
    type: yesno
    sql: ${TABLE}.can_rate ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created_on_db {
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
    sql: ${TABLE}.created_on_db ;;
  }

  dimension: like_count {
    type: number
    sql: ${TABLE}.like_count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_like_count {
    type: sum
    sql: ${like_count} ;;
  }

  measure: average_like_count {
    type: average
    sql: ${like_count} ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.parent_id ;;
  }

  dimension_group: published {
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
    sql: ${TABLE}.published_at ;;
  }

  dimension: record_id {
    type: string
    sql: ${TABLE}.record_id ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  dimension: viewer_rating {
    type: string
    sql: ${TABLE}.viewer_rating ;;
  }

  measure: count {
    type: count
    drill_fields: [id, author_display_name]
  }
}
