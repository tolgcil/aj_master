# The name of this view in Looker is "Facebook Weekly Test"
view: facebook_weekly_test {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.facebook_weekly_TEST`
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
  # This dimension will be called "Admin Creator" in Explore.

  dimension: admin_creator {
    type: string
    sql: ${TABLE}.admin_creator ;;
  }

  dimension: admin_creator_name {
    type: string
    sql: ${TABLE}.admin_creator_name ;;
  }

  dimension: comments {
    type: number
    sql: ${TABLE}.comments ;;
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

  dimension_group: created_time_local {
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
    sql: ${TABLE}.created_time_local ;;
  }

  dimension: data_source {
    type: string
    sql: ${TABLE}.data_source ;;
  }

  dimension: engcontrib {
    type: string
    sql: ${TABLE}.engcontrib ;;
  }

  dimension: engscore {
    type: number
    sql: ${TABLE}.engscore ;;
  }

  dimension: hide_all_clicks {
    type: number
    sql: ${TABLE}.hide_all_clicks ;;
  }

  dimension: hide_clicks {
    type: number
    sql: ${TABLE}.hide_clicks ;;
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

  dimension: object_id {
    type: string
    sql: ${TABLE}.object_id ;;
  }

  dimension: platform_channel_record_key {
    type: string
    sql: ${TABLE}.platform_channel_record_key ;;
  }

  dimension: post_activity {
    type: number
    sql: ${TABLE}.post_activity ;;
  }

  dimension: post_activity_by_action_type {
    type: string
    sql: ${TABLE}.post_activity_by_action_type ;;
  }

  dimension: post_activity_by_action_type_unique {
    type: string
    sql: ${TABLE}.post_activity_by_action_type_unique ;;
  }

  dimension: post_activity_unique {
    type: number
    sql: ${TABLE}.post_activity_unique ;;
  }

  dimension: post_audio_listen_count {
    type: number
    sql: ${TABLE}.post_audio_listen_count ;;
  }

  dimension: post_audio_listen_time {
    type: number
    sql: ${TABLE}.post_audio_listen_time ;;
  }

  dimension: post_clicks {
    type: number
    sql: ${TABLE}.post_clicks ;;
  }

  dimension: post_clicks_by_type {
    type: string
    sql: ${TABLE}.post_clicks_by_type ;;
  }

  dimension: post_clicks_by_type_unique {
    type: string
    sql: ${TABLE}.post_clicks_by_type_unique ;;
  }

  dimension: post_clicks_unique {
    type: number
    sql: ${TABLE}.post_clicks_unique ;;
  }

  dimension: post_consumptions {
    type: number
    sql: ${TABLE}.post_consumptions ;;
  }

  dimension: post_consumptions_by_type {
    type: string
    sql: ${TABLE}.post_consumptions_by_type ;;
  }

  dimension: post_consumptions_by_type_unique {
    type: string
    sql: ${TABLE}.post_consumptions_by_type_unique ;;
  }

  dimension: post_consumptions_unique {
    type: number
    sql: ${TABLE}.post_consumptions_unique ;;
  }

  dimension: post_engaged_fan {
    type: number
    sql: ${TABLE}.post_engaged_fan ;;
  }

  dimension: post_engaged_users {
    type: number
    sql: ${TABLE}.post_engaged_users ;;
  }

  dimension: post_fan_reach {
    type: number
    sql: ${TABLE}.post_fan_reach ;;
  }

  dimension: post_impressions {
    type: number
    sql: ${TABLE}.post_impressions ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_post_impressions {
    type: sum
    sql: ${post_impressions} ;;
  }

  measure: average_post_impressions {
    type: average
    sql: ${post_impressions} ;;
  }

  dimension: post_impressions_by_paid_non_paid {
    type: string
    sql: ${TABLE}.post_impressions_by_paid_non_paid ;;
  }

  dimension: post_impressions_by_paid_non_paid_unique {
    type: string
    sql: ${TABLE}.post_impressions_by_paid_non_paid_unique ;;
  }

  dimension: post_impressions_by_story_type {
    type: string
    sql: ${TABLE}.post_impressions_by_story_type ;;
  }

  dimension: post_impressions_by_story_type_unique {
    type: string
    sql: ${TABLE}.post_impressions_by_story_type_unique ;;
  }

  dimension: post_impressions_fan {
    type: number
    sql: ${TABLE}.post_impressions_fan ;;
  }

  dimension: post_impressions_fan_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_impressions_fan_paid ;;
  }

  dimension: post_impressions_fan_paid_unique {
    type: number
    sql: ${TABLE}.post_impressions_fan_paid_unique ;;
  }

  dimension: post_impressions_fan_unique {
    type: number
    sql: ${TABLE}.post_impressions_fan_unique ;;
  }

  dimension: post_impressions_organic {
    type: number
    sql: ${TABLE}.post_impressions_organic ;;
  }

  dimension: post_impressions_organic_unique {
    type: number
    sql: ${TABLE}.post_impressions_organic_unique ;;
  }

  dimension: post_impressions_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_impressions_paid ;;
  }

  dimension: post_impressions_paid_unique {
    type: number
    sql: ${TABLE}.post_impressions_paid_unique ;;
  }

  dimension: post_impressions_unique {
    type: number
    sql: ${TABLE}.post_impressions_unique ;;
  }

  dimension: post_impressions_viral {
    type: number
    sql: ${TABLE}.post_impressions_viral ;;
  }

  dimension: post_impressions_viral_unique {
    type: number
    sql: ${TABLE}.post_impressions_viral_unique ;;
  }

  dimension: post_interests_action_by_type {
    type: string
    sql: ${TABLE}.post_interests_action_by_type ;;
  }

  dimension: post_interests_action_by_type_unique {
    type: string
    sql: ${TABLE}.post_interests_action_by_type_unique ;;
  }

  dimension: post_interests_consumptions {
    type: string
    sql: ${TABLE}.post_interests_consumptions ;;
  }

  dimension: post_interests_consumptions_by_type {
    type: string
    sql: ${TABLE}.post_interests_consumptions_by_type ;;
  }

  dimension: post_interests_consumptions_by_type_unique {
    type: string
    sql: ${TABLE}.post_interests_consumptions_by_type_unique ;;
  }

  dimension: post_interests_consumptions_unique {
    type: string
    sql: ${TABLE}.post_interests_consumptions_unique ;;
  }

  dimension: post_interests_impressions {
    type: string
    sql: ${TABLE}.post_interests_impressions ;;
  }

  dimension: post_interests_impressions_unique {
    type: string
    sql: ${TABLE}.post_interests_impressions_unique ;;
  }

  dimension: post_negative_feedback {
    type: number
    sql: ${TABLE}.post_negative_feedback ;;
  }

  dimension: post_negative_feedback_by_type {
    type: string
    sql: ${TABLE}.post_negative_feedback_by_type ;;
  }

  dimension: post_negative_feedback_by_type_unique {
    type: string
    sql: ${TABLE}.post_negative_feedback_by_type_unique ;;
  }

  dimension: post_negative_feedback_unique {
    type: number
    sql: ${TABLE}.post_negative_feedback_unique ;;
  }

  dimension: post_reactions_anger_total {
    type: number
    sql: ${TABLE}.post_reactions_anger_total ;;
  }

  dimension: post_reactions_by_type_total {
    type: string
    sql: ${TABLE}.post_reactions_by_type_total ;;
  }

  dimension: post_reactions_haha_total {
    type: number
    sql: ${TABLE}.post_reactions_haha_total ;;
  }

  dimension: post_reactions_like_total {
    type: number
    sql: ${TABLE}.post_reactions_like_total ;;
  }

  dimension: post_reactions_love_total {
    type: number
    sql: ${TABLE}.post_reactions_love_total ;;
  }

  dimension: post_reactions_sorry_total {
    type: number
    sql: ${TABLE}.post_reactions_sorry_total ;;
  }

  dimension: post_reactions_wow_total {
    type: number
    sql: ${TABLE}.post_reactions_wow_total ;;
  }

  dimension: post_stories {
    type: number
    sql: ${TABLE}.post_stories ;;
  }

  dimension: post_stories_by_action_type {
    type: string
    sql: ${TABLE}.post_stories_by_action_type ;;
  }

  dimension: post_story_adds {
    type: number
    sql: ${TABLE}.post_story_adds ;;
  }

  dimension: post_story_adds_by_action_type {
    type: string
    sql: ${TABLE}.post_story_adds_by_action_type ;;
  }

  dimension: post_story_adds_by_action_type_unique {
    type: string
    sql: ${TABLE}.post_story_adds_by_action_type_unique ;;
  }

  dimension: post_story_adds_unique {
    type: number
    sql: ${TABLE}.post_story_adds_unique ;;
  }

  dimension: post_storytellers {
    type: number
    sql: ${TABLE}.post_storytellers ;;
  }

  dimension: post_storytellers_by_action_type {
    type: string
    sql: ${TABLE}.post_storytellers_by_action_type ;;
  }

  dimension: post_video_avg_time_watched {
    type: number
    sql: ${TABLE}.post_video_avg_time_watched ;;
  }

  dimension: post_video_complete_views_30s {
    type: number
    sql: ${TABLE}.post_video_complete_views_30s ;;
  }

  dimension: post_video_complete_views_30s_autoplayed {
    type: number
    sql: ${TABLE}.post_video_complete_views_30s_autoplayed ;;
  }

  dimension: post_video_complete_views_30s_clicked_to_play {
    type: number
    sql: ${TABLE}.post_video_complete_views_30s_clicked_to_play ;;
  }

  dimension: post_video_complete_views_30s_organic {
    type: number
    sql: ${TABLE}.post_video_complete_views_30s_organic ;;
  }

  dimension: post_video_complete_views_30s_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_video_complete_views_30s_paid ;;
  }

  dimension: post_video_complete_views_30s_unique {
    type: number
    sql: ${TABLE}.post_video_complete_views_30s_unique ;;
  }

  dimension: post_video_complete_views_organic {
    type: number
    sql: ${TABLE}.post_video_complete_views_organic ;;
  }

  dimension: post_video_complete_views_organic_unique {
    type: number
    sql: ${TABLE}.post_video_complete_views_organic_unique ;;
  }

  dimension: post_video_complete_views_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_video_complete_views_paid ;;
  }

  dimension: post_video_complete_views_paid_unique {
    type: number
    sql: ${TABLE}.post_video_complete_views_paid_unique ;;
  }

  dimension: post_video_length {
    type: number
    sql: ${TABLE}.post_video_length ;;
  }

  dimension: post_video_retention_graph {
    type: string
    sql: ${TABLE}.post_video_retention_graph ;;
  }

  dimension: post_video_retention_graph_autoplayed {
    type: string
    sql: ${TABLE}.post_video_retention_graph_autoplayed ;;
  }

  dimension: post_video_retention_graph_clicked_to_play {
    type: string
    sql: ${TABLE}.post_video_retention_graph_clicked_to_play ;;
  }

  dimension: post_video_view_time {
    type: number
    sql: ${TABLE}.post_video_view_time ;;
  }

  dimension: post_video_view_time_by_age_bucket_and_gender {
    type: string
    sql: ${TABLE}.post_video_view_time_by_age_bucket_and_gender ;;
  }

  dimension: post_video_view_time_by_distribution_type {
    type: string
    sql: ${TABLE}.post_video_view_time_by_distribution_type ;;
  }

  dimension: post_video_view_time_by_region_id {
    type: string
    sql: ${TABLE}.post_video_view_time_by_region_id ;;
  }

  dimension: post_video_view_time_organic {
    type: number
    sql: ${TABLE}.post_video_view_time_organic ;;
  }

  dimension: post_video_view_time_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_video_view_time_paid ;;
  }

  dimension: post_video_views {
    type: number
    sql: ${TABLE}.post_video_views ;;
  }

  dimension: post_video_views_10s {
    type: number
    sql: ${TABLE}.post_video_views_10s ;;
  }

  dimension: post_video_views_10s_autoplayed {
    type: number
    sql: ${TABLE}.post_video_views_10s_autoplayed ;;
  }

  dimension: post_video_views_10s_clicked_to_play {
    type: number
    sql: ${TABLE}.post_video_views_10s_clicked_to_play ;;
  }

  dimension: post_video_views_10s_organic {
    type: number
    sql: ${TABLE}.post_video_views_10s_organic ;;
  }

  dimension: post_video_views_10s_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_video_views_10s_paid ;;
  }

  dimension: post_video_views_10s_sound_on {
    type: number
    sql: ${TABLE}.post_video_views_10s_sound_on ;;
  }

  dimension: post_video_views_10s_unique {
    type: number
    sql: ${TABLE}.post_video_views_10s_unique ;;
  }

  dimension: post_video_views_autoplayed {
    type: number
    sql: ${TABLE}.post_video_views_autoplayed ;;
  }

  dimension: post_video_views_by_distribution_type {
    type: string
    sql: ${TABLE}.post_video_views_by_distribution_type ;;
  }

  dimension: post_video_views_clicked_to_play {
    type: number
    sql: ${TABLE}.post_video_views_clicked_to_play ;;
  }

  dimension: post_video_views_organic {
    type: number
    sql: ${TABLE}.post_video_views_organic ;;
  }

  dimension: post_video_views_organic_unique {
    type: number
    sql: ${TABLE}.post_video_views_organic_unique ;;
  }

  dimension: post_video_views_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.post_video_views_paid ;;
  }

  dimension: post_video_views_paid_unique {
    type: number
    sql: ${TABLE}.post_video_views_paid_unique ;;
  }

  dimension: post_video_views_sound_on {
    type: number
    sql: ${TABLE}.post_video_views_sound_on ;;
  }

  dimension: post_video_views_unique {
    type: number
    sql: ${TABLE}.post_video_views_unique ;;
  }

  dimension: promotion_status {
    type: string
    sql: ${TABLE}.promotion_status ;;
  }

  dimension: properties {
    type: string
    sql: ${TABLE}.properties ;;
  }

  dimension: record_id {
    type: string
    sql: ${TABLE}.record_id ;;
  }

  dimension: shares {
    type: number
    sql: ${TABLE}.shares ;;
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

  dimension_group: time_fetched_local {
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
    sql: ${TABLE}.time_fetched_local ;;
  }

  dimension: total_comments {
    type: number
    sql: ${TABLE}.total_comments ;;
  }

  dimension: total_likes {
    type: number
    sql: ${TABLE}.total_likes ;;
  }

  dimension: total_worth {
    type: number
    sql: ${TABLE}.total_worth ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_time ;;
  }

  measure: count {
    type: count
    drill_fields: [id, admin_creator_name, created_time, name]
  }
}
