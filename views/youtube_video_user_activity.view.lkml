# The name of this view in Looker is "Youtube Video User Activity"
view: youtube_video_user_activity {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.youtube_video_user_activity`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Annotation Clickable Impressions" in Explore.

  dimension: annotation_clickable_impressions {
    type: number
    sql: ${TABLE}.annotation_clickable_impressions ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_annotation_clickable_impressions {
    type: sum
    sql: ${annotation_clickable_impressions} ;;
  }

  measure: average_annotation_clickable_impressions {
    type: average
    sql: ${annotation_clickable_impressions} ;;
  }

  dimension: annotation_clicks {
    type: number
    sql: ${TABLE}.annotation_clicks ;;
  }

  dimension: annotation_closable_impressions {
    type: number
    sql: ${TABLE}.annotation_closable_impressions ;;
  }

  dimension: average_view_duration_percentage {
    type: number
    sql: ${TABLE}.average_view_duration_percentage ;;
  }

  dimension: average_view_duration_seconds {
    type: number
    sql: ${TABLE}.average_view_duration_seconds ;;
  }

  dimension: card_click_rate {
    type: number
    sql: ${TABLE}.card_click_rate ;;
  }

  dimension: card_clicks {
    type: number
    sql: ${TABLE}.card_clicks ;;
  }

  dimension: card_impressions {
    type: number
    sql: ${TABLE}.card_impressions ;;
  }

  dimension: card_teaser_click_rate {
    type: number
    sql: ${TABLE}.card_teaser_click_rate ;;
  }

  dimension: card_teaser_clicks {
    type: number
    sql: ${TABLE}.card_teaser_clicks ;;
  }

  dimension: card_teaser_impressions {
    type: number
    sql: ${TABLE}.card_teaser_impressions ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.channel_id ;;
  }

  dimension: claimed_status {
    type: string
    sql: ${TABLE}.claimed_status ;;
  }

  dimension: comments {
    type: number
    sql: ${TABLE}.comments ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
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

  dimension: dislikes {
    type: number
    sql: ${TABLE}.dislikes ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}.likes ;;
  }

  dimension: live_or_on_demand {
    type: string
    sql: ${TABLE}.live_or_on_demand ;;
  }

  dimension: platform_channel_record_key {
    type: string
    sql: ${TABLE}.platform_channel_record_key ;;
  }

  dimension: record_id {
    type: string
    sql: ${TABLE}.record_id ;;
  }

  dimension: red_views {
    type: number
    sql: ${TABLE}.red_views ;;
  }

  dimension: red_watch_time_minutes {
    type: number
    sql: ${TABLE}.red_watch_time_minutes ;;
  }

  dimension: shares {
    type: number
    sql: ${TABLE}.shares ;;
  }

  dimension: subscribed_status {
    type: string
    sql: ${TABLE}.subscribed_status ;;
  }

  dimension: subscribers_gained {
    type: number
    sql: ${TABLE}.subscribers_gained ;;
  }

  dimension: subscribers_lost {
    type: number
    sql: ${TABLE}.subscribers_lost ;;
  }

  dimension_group: updated_on_db {
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
    sql: ${TABLE}.updated_on_db ;;
  }

  dimension: uploader_type {
    type: string
    sql: ${TABLE}.uploader_type ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  dimension: videos_added_to_playlists {
    type: number
    sql: ${TABLE}.videos_added_to_playlists ;;
  }

  dimension: videos_removed_from_playlists {
    type: number
    sql: ${TABLE}.videos_removed_from_playlists ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  dimension: watch_time_minutes {
    type: number
    sql: ${TABLE}.watch_time_minutes ;;
  }

  dimension_group: youtube_record {
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
    sql: ${TABLE}.youtube_record_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
