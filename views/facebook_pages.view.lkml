# The name of this view in Looker is "Facebook Pages"
view: facebook_pages {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.facebook_pages`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Data Source" in Explore.

  dimension: data_source {
    type: string
    sql: ${TABLE}.data_source ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: end {
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
    sql: ${TABLE}.end_time ;;
  }

  dimension: fan_count {
    type: number
    sql: ${TABLE}.fan_count ;;
  }

  dimension: page {
    type: string
    sql: ${TABLE}.page ;;
  }

  dimension: page_actions_post_reactions_anger_total {
    type: number
    sql: ${TABLE}.page_actions_post_reactions_anger_total ;;
  }

  dimension: page_actions_post_reactions_haha_total {
    type: number
    sql: ${TABLE}.page_actions_post_reactions_haha_total ;;
  }

  dimension: page_actions_post_reactions_like_total {
    type: number
    sql: ${TABLE}.page_actions_post_reactions_like_total ;;
  }

  dimension: page_actions_post_reactions_love_total {
    type: number
    sql: ${TABLE}.page_actions_post_reactions_love_total ;;
  }

  dimension: page_actions_post_reactions_sorry_total {
    type: number
    sql: ${TABLE}.page_actions_post_reactions_sorry_total ;;
  }

  dimension: page_actions_post_reactions_total {
    type: string
    sql: ${TABLE}.page_actions_post_reactions_total ;;
  }

  dimension: page_actions_post_reactions_wow_total {
    type: number
    sql: ${TABLE}.page_actions_post_reactions_wow_total ;;
  }

  dimension: page_admin_num_posts {
    type: number
    sql: ${TABLE}.page_admin_num_posts ;;
  }

  dimension: page_admin_num_posts_by_type {
    type: string
    sql: ${TABLE}.page_admin_num_posts_by_type ;;
  }

  dimension: page_consumptions {
    type: number
    sql: ${TABLE}.page_consumptions ;;
  }

  dimension: page_consumptions_by_consumption_type {
    type: string
    sql: ${TABLE}.page_consumptions_by_consumption_type ;;
  }

  dimension: page_consumptions_by_consumption_type_unique {
    type: string
    sql: ${TABLE}.page_consumptions_by_consumption_type_unique ;;
  }

  dimension: page_consumptions_unique {
    type: number
    sql: ${TABLE}.page_consumptions_unique ;;
  }

  dimension: page_content_activity {
    type: number
    sql: ${TABLE}.page_content_activity ;;
  }

  dimension: page_content_activity_by_action_type {
    type: string
    sql: ${TABLE}.page_content_activity_by_action_type ;;
  }

  dimension: page_content_activity_by_action_type_unique {
    type: string
    sql: ${TABLE}.page_content_activity_by_action_type_unique ;;
  }

  dimension: page_content_activity_by_age_gender_unique {
    type: string
    sql: ${TABLE}.page_content_activity_by_age_gender_unique ;;
  }

  dimension: page_content_activity_by_city_unique {
    type: string
    sql: ${TABLE}.page_content_activity_by_city_unique ;;
  }

  dimension: page_content_activity_by_country_unique {
    type: string
    sql: ${TABLE}.page_content_activity_by_country_unique ;;
  }

  dimension: page_content_activity_by_locale_unique {
    type: string
    sql: ${TABLE}.page_content_activity_by_locale_unique ;;
  }

  dimension: page_content_activity_unique {
    type: number
    sql: ${TABLE}.page_content_activity_unique ;;
  }

  dimension: page_cta_clicks_by_age_gender_logged_in_unique {
    type: string
    sql: ${TABLE}.page_cta_clicks_by_age_gender_logged_in_unique ;;
  }

  dimension: page_cta_clicks_by_site_logged_in_unique {
    type: string
    sql: ${TABLE}.page_cta_clicks_by_site_logged_in_unique ;;
  }

  dimension: page_cta_clicks_logged_in_by_city_unique {
    type: string
    sql: ${TABLE}.page_cta_clicks_logged_in_by_city_unique ;;
  }

  dimension: page_cta_clicks_logged_in_by_country_unique {
    type: string
    sql: ${TABLE}.page_cta_clicks_logged_in_by_country_unique ;;
  }

  dimension: page_cta_clicks_logged_in_by_locale_unique {
    type: string
    sql: ${TABLE}.page_cta_clicks_logged_in_by_locale_unique ;;
  }

  dimension: page_cta_clicks_logged_in_total {
    type: string
    sql: ${TABLE}.page_cta_clicks_logged_in_total ;;
  }

  dimension: page_cta_clicks_logged_in_unique {
    type: string
    sql: ${TABLE}.page_cta_clicks_logged_in_unique ;;
  }

  dimension: page_engaged_users {
    type: number
    sql: ${TABLE}.page_engaged_users ;;
  }

  dimension: page_fan_adds {
    type: number
    sql: ${TABLE}.page_fan_adds ;;
  }

  dimension: page_fan_adds_by_paid_non_paid_unique {
    type: string
    sql: ${TABLE}.page_fan_adds_by_paid_non_paid_unique ;;
  }

  dimension: page_fan_adds_unique {
    type: number
    sql: ${TABLE}.page_fan_adds_unique ;;
  }

  dimension: page_fan_removes {
    type: number
    sql: ${TABLE}.page_fan_removes ;;
  }

  dimension: page_fan_removes_unique {
    type: number
    sql: ${TABLE}.page_fan_removes_unique ;;
  }

  dimension: page_fans {
    type: string
    sql: ${TABLE}.page_fans ;;
  }

  dimension: page_fans_by_like_source {
    type: string
    sql: ${TABLE}.page_fans_by_like_source ;;
  }

  dimension: page_fans_by_like_source_unique {
    type: string
    sql: ${TABLE}.page_fans_by_like_source_unique ;;
  }

  dimension: page_fans_by_unlike_source {
    type: string
    sql: ${TABLE}.page_fans_by_unlike_source ;;
  }

  dimension: page_fans_by_unlike_source_unique {
    type: string
    sql: ${TABLE}.page_fans_by_unlike_source_unique ;;
  }

  dimension: page_fans_city {
    type: string
    sql: ${TABLE}.page_fans_city ;;
  }

  dimension: page_fans_country {
    type: string
    sql: ${TABLE}.page_fans_country ;;
  }

  dimension: page_fans_gender_age {
    type: string
    sql: ${TABLE}.page_fans_gender_age ;;
  }

  dimension: page_fans_locale {
    type: string
    sql: ${TABLE}.page_fans_locale ;;
  }

  dimension: page_fans_online {
    type: string
    sql: ${TABLE}.page_fans_online ;;
  }

  dimension: page_fans_online_per_day {
    type: number
    sql: ${TABLE}.page_fans_online_per_day ;;
  }

  dimension: page_follower_adds {
    type: number
    sql: ${TABLE}.page_follower_adds ;;
  }

  dimension: page_follower_adds_unique {
    type: number
    sql: ${TABLE}.page_follower_adds_unique ;;
  }

  dimension: page_follower_removes {
    type: number
    sql: ${TABLE}.page_follower_removes ;;
  }

  dimension: page_follower_removes_unique {
    type: number
    sql: ${TABLE}.page_follower_removes_unique ;;
  }

  dimension: page_followers_by_source {
    type: string
    sql: ${TABLE}.page_followers_by_source ;;
  }

  dimension: page_followers_by_source_unique {
    type: string
    sql: ${TABLE}.page_followers_by_source_unique ;;
  }

  dimension: page_get_directions_clicks_by_age_gender_logged_in_unique {
    type: string
    sql: ${TABLE}.page_get_directions_clicks_by_age_gender_logged_in_unique ;;
  }

  dimension: page_get_directions_clicks_by_site_logged_in_unique {
    type: string
    sql: ${TABLE}.page_get_directions_clicks_by_site_logged_in_unique ;;
  }

  dimension: page_get_directions_clicks_logged_in_count {
    type: number
    sql: ${TABLE}.page_get_directions_clicks_logged_in_count ;;
  }

  dimension: page_get_directions_clicks_logged_in_unique {
    type: number
    sql: ${TABLE}.page_get_directions_clicks_logged_in_unique ;;
  }

  dimension: page_id {
    type: string
    sql: ${TABLE}.page_id ;;
  }

  dimension: page_impressions {
    type: number
    sql: ${TABLE}.page_impressions ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_page_impressions {
    type: sum
    sql: ${page_impressions} ;;
  }

  measure: average_page_impressions {
    type: average
    sql: ${page_impressions} ;;
  }

  dimension: page_impressions_by_age_gender_unique {
    type: string
    sql: ${TABLE}.page_impressions_by_age_gender_unique ;;
  }

  dimension: page_impressions_by_city_unique {
    type: string
    sql: ${TABLE}.page_impressions_by_city_unique ;;
  }

  dimension: page_impressions_by_country_unique {
    type: string
    sql: ${TABLE}.page_impressions_by_country_unique ;;
  }

  dimension: page_impressions_by_locale_unique {
    type: string
    sql: ${TABLE}.page_impressions_by_locale_unique ;;
  }

  dimension: page_impressions_by_paid_non_paid {
    type: string
    sql: ${TABLE}.page_impressions_by_paid_non_paid ;;
  }

  dimension: page_impressions_by_paid_non_paid_unique {
    type: string
    sql: ${TABLE}.page_impressions_by_paid_non_paid_unique ;;
  }

  dimension: page_impressions_by_story_type {
    type: string
    sql: ${TABLE}.page_impressions_by_story_type ;;
  }

  dimension: page_impressions_by_story_type_unique {
    type: string
    sql: ${TABLE}.page_impressions_by_story_type_unique ;;
  }

  dimension: page_impressions_frequency_distribution {
    type: string
    sql: ${TABLE}.page_impressions_frequency_distribution ;;
  }

  dimension: page_impressions_organic {
    type: number
    sql: ${TABLE}.page_impressions_organic ;;
  }

  dimension: page_impressions_organic_unique {
    type: number
    sql: ${TABLE}.page_impressions_organic_unique ;;
  }

  dimension: page_impressions_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.page_impressions_paid ;;
  }

  dimension: page_impressions_paid_unique {
    type: number
    sql: ${TABLE}.page_impressions_paid_unique ;;
  }

  dimension: page_impressions_unique {
    type: number
    sql: ${TABLE}.page_impressions_unique ;;
  }

  dimension: page_impressions_viral {
    type: number
    sql: ${TABLE}.page_impressions_viral ;;
  }

  dimension: page_impressions_viral_frequency_distribution {
    type: string
    sql: ${TABLE}.page_impressions_viral_frequency_distribution ;;
  }

  dimension: page_impressions_viral_unique {
    type: number
    sql: ${TABLE}.page_impressions_viral_unique ;;
  }

  dimension: page_negative_feedback {
    type: number
    sql: ${TABLE}.page_negative_feedback ;;
  }

  dimension: page_negative_feedback_by_type {
    type: string
    sql: ${TABLE}.page_negative_feedback_by_type ;;
  }

  dimension: page_negative_feedback_by_type_unique {
    type: string
    sql: ${TABLE}.page_negative_feedback_by_type_unique ;;
  }

  dimension: page_negative_feedback_unique {
    type: number
    sql: ${TABLE}.page_negative_feedback_unique ;;
  }

  dimension: page_places_checkin_mobile {
    type: number
    sql: ${TABLE}.page_places_checkin_mobile ;;
  }

  dimension: page_places_checkin_mobile_unique {
    type: number
    sql: ${TABLE}.page_places_checkin_mobile_unique ;;
  }

  dimension: page_places_checkin_total {
    type: number
    sql: ${TABLE}.page_places_checkin_total ;;
  }

  dimension: page_places_checkin_total_unique {
    type: number
    sql: ${TABLE}.page_places_checkin_total_unique ;;
  }

  dimension: page_positive_feedback_by_type {
    type: string
    sql: ${TABLE}.page_positive_feedback_by_type ;;
  }

  dimension: page_positive_feedback_by_type_unique {
    type: string
    sql: ${TABLE}.page_positive_feedback_by_type_unique ;;
  }

  dimension: page_posts_impressions {
    type: number
    sql: ${TABLE}.page_posts_impressions ;;
  }

  dimension: page_posts_impressions_by_paid_non_paid {
    type: string
    sql: ${TABLE}.page_posts_impressions_by_paid_non_paid ;;
  }

  dimension: page_posts_impressions_by_paid_non_paid_unique {
    type: string
    sql: ${TABLE}.page_posts_impressions_by_paid_non_paid_unique ;;
  }

  dimension: page_posts_impressions_frequency_distribution {
    type: string
    sql: ${TABLE}.page_posts_impressions_frequency_distribution ;;
  }

  dimension: page_posts_impressions_nonviral {
    type: number
    sql: ${TABLE}.page_posts_impressions_nonviral ;;
  }

  dimension: page_posts_impressions_nonviral_unique {
    type: number
    sql: ${TABLE}.page_posts_impressions_nonviral_unique ;;
  }

  dimension: page_posts_impressions_organic {
    type: number
    sql: ${TABLE}.page_posts_impressions_organic ;;
  }

  dimension: page_posts_impressions_organic_unique {
    type: number
    sql: ${TABLE}.page_posts_impressions_organic_unique ;;
  }

  dimension: page_posts_impressions_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.page_posts_impressions_paid ;;
  }

  dimension: page_posts_impressions_paid_unique {
    type: number
    sql: ${TABLE}.page_posts_impressions_paid_unique ;;
  }

  dimension: page_posts_impressions_unique {
    type: number
    sql: ${TABLE}.page_posts_impressions_unique ;;
  }

  dimension: page_posts_impressions_viral {
    type: number
    sql: ${TABLE}.page_posts_impressions_viral ;;
  }

  dimension: page_posts_impressions_viral_unique {
    type: number
    sql: ${TABLE}.page_posts_impressions_viral_unique ;;
  }

  dimension: page_posts_served_impressions_organic_unique {
    type: number
    sql: ${TABLE}.page_posts_served_impressions_organic_unique ;;
  }

  dimension: page_stories {
    type: number
    sql: ${TABLE}.page_stories ;;
  }

  dimension: page_stories_by_story_type {
    type: string
    sql: ${TABLE}.page_stories_by_story_type ;;
  }

  dimension: page_story_adds {
    type: number
    sql: ${TABLE}.page_story_adds ;;
  }

  dimension: page_story_adds_by_age_gender_unique {
    type: string
    sql: ${TABLE}.page_story_adds_by_age_gender_unique ;;
  }

  dimension: page_story_adds_by_city_unique {
    type: string
    sql: ${TABLE}.page_story_adds_by_city_unique ;;
  }

  dimension: page_story_adds_by_country_unique {
    type: string
    sql: ${TABLE}.page_story_adds_by_country_unique ;;
  }

  dimension: page_storytellers_by_age_gender {
    type: string
    sql: ${TABLE}.page_storytellers_by_age_gender ;;
  }

  dimension: page_storytellers_by_city {
    type: string
    sql: ${TABLE}.page_storytellers_by_city ;;
  }

  dimension: page_storytellers_by_country {
    type: string
    sql: ${TABLE}.page_storytellers_by_country ;;
  }

  dimension: page_storytellers_by_locale {
    type: string
    sql: ${TABLE}.page_storytellers_by_locale ;;
  }

  dimension: page_storytellers_by_story_type {
    type: string
    sql: ${TABLE}.page_storytellers_by_story_type ;;
  }

  dimension: page_tab_views_login_top {
    type: string
    sql: ${TABLE}.page_tab_views_login_top ;;
  }

  dimension: page_tab_views_login_top_unique {
    type: string
    sql: ${TABLE}.page_tab_views_login_top_unique ;;
  }

  dimension: page_tab_views_logout_top {
    type: string
    sql: ${TABLE}.page_tab_views_logout_top ;;
  }

  dimension: page_total_actions {
    type: number
    sql: ${TABLE}.page_total_actions ;;
  }

  dimension: page_video_complete_views_30s {
    type: number
    sql: ${TABLE}.page_video_complete_views_30s ;;
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

  dimension: page_video_repeat_views {
    type: number
    sql: ${TABLE}.page_video_repeat_views ;;
  }

  dimension: page_video_view_time {
    type: number
    sql: ${TABLE}.page_video_view_time ;;
  }

  dimension: page_video_views {
    type: number
    sql: ${TABLE}.page_video_views ;;
  }

  dimension: page_video_views_10s {
    type: number
    sql: ${TABLE}.page_video_views_10s ;;
  }

  dimension: page_video_views_10s_autoplayed {
    type: number
    sql: ${TABLE}.page_video_views_10s_autoplayed ;;
  }

  dimension: page_video_views_10s_click_to_play {
    type: number
    sql: ${TABLE}.page_video_views_10s_click_to_play ;;
  }

  dimension: page_video_views_10s_organic {
    type: number
    sql: ${TABLE}.page_video_views_10s_organic ;;
  }

  dimension: page_video_views_10s_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.page_video_views_10s_paid ;;
  }

  dimension: page_video_views_10s_repeat {
    type: number
    sql: ${TABLE}.page_video_views_10s_repeat ;;
  }

  dimension: page_video_views_10s_unique {
    type: number
    sql: ${TABLE}.page_video_views_10s_unique ;;
  }

  dimension: page_video_views_autoplayed {
    type: number
    sql: ${TABLE}.page_video_views_autoplayed ;;
  }

  dimension: page_video_views_click_to_play {
    type: number
    sql: ${TABLE}.page_video_views_click_to_play ;;
  }

  dimension: page_video_views_organic {
    type: number
    sql: ${TABLE}.page_video_views_organic ;;
  }

  dimension: page_video_views_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.page_video_views_paid ;;
  }

  dimension: page_video_views_unique {
    type: number
    sql: ${TABLE}.page_video_views_unique ;;
  }

  dimension: page_views {
    type: number
    sql: ${TABLE}.page_views ;;
  }

  dimension: page_views_by_age_gender_logged_in_unique {
    type: string
    sql: ${TABLE}.page_views_by_age_gender_logged_in_unique ;;
  }

  dimension: page_views_by_internal_referer_logged_in_unique {
    type: string
    sql: ${TABLE}.page_views_by_internal_referer_logged_in_unique ;;
  }

  dimension: page_views_by_profile_tab_logged_in_unique {
    type: string
    sql: ${TABLE}.page_views_by_profile_tab_logged_in_unique ;;
  }

  dimension: page_views_by_profile_tab_total {
    type: string
    sql: ${TABLE}.page_views_by_profile_tab_total ;;
  }

  dimension: page_views_by_site_logged_in_unique {
    type: string
    sql: ${TABLE}.page_views_by_site_logged_in_unique ;;
  }

  dimension: page_views_external_referrals {
    type: string
    sql: ${TABLE}.page_views_external_referrals ;;
  }

  dimension: page_views_logged_in_total {
    type: number
    sql: ${TABLE}.page_views_logged_in_total ;;
  }

  dimension: page_views_logged_in_unique {
    type: number
    sql: ${TABLE}.page_views_logged_in_unique ;;
  }

  dimension: page_views_login {
    type: number
    sql: ${TABLE}.page_views_login ;;
  }

  dimension: page_views_login_unique {
    type: number
    sql: ${TABLE}.page_views_login_unique ;;
  }

  dimension: page_views_logout {
    type: number
    sql: ${TABLE}.page_views_logout ;;
  }

  dimension: page_views_total {
    type: number
    sql: ${TABLE}.page_views_total ;;
  }

  dimension: page_views_unique {
    type: number
    sql: ${TABLE}.page_views_unique ;;
  }

  dimension: page_visits_logged_in_by_city_unique {
    type: string
    sql: ${TABLE}.page_visits_logged_in_by_city_unique ;;
  }

  dimension: page_visits_logged_in_by_country_unique {
    type: string
    sql: ${TABLE}.page_visits_logged_in_by_country_unique ;;
  }

  dimension: page_visits_logged_in_by_locale_unique {
    type: string
    sql: ${TABLE}.page_visits_logged_in_by_locale_unique ;;
  }

  dimension: page_visits_logged_in_by_referers_unique {
    type: string
    sql: ${TABLE}.page_visits_logged_in_by_referers_unique ;;
  }

  dimension: page_website_clicks_by_age_gender_logged_in_unique {
    type: string
    sql: ${TABLE}.page_website_clicks_by_age_gender_logged_in_unique ;;
  }

  dimension: page_website_clicks_by_site_logged_in_unique {
    type: string
    sql: ${TABLE}.page_website_clicks_by_site_logged_in_unique ;;
  }

  dimension: page_website_clicks_logged_in_by_city_unique {
    type: string
    sql: ${TABLE}.page_website_clicks_logged_in_by_city_unique ;;
  }

  dimension: page_website_clicks_logged_in_by_country_unique {
    type: string
    sql: ${TABLE}.page_website_clicks_logged_in_by_country_unique ;;
  }

  dimension: page_website_clicks_logged_in_by_locale_unique {
    type: string
    sql: ${TABLE}.page_website_clicks_logged_in_by_locale_unique ;;
  }

  dimension: page_website_clicks_logged_in_count {
    type: number
    sql: ${TABLE}.page_website_clicks_logged_in_count ;;
  }

  dimension: page_website_clicks_logged_in_unique {
    type: number
    sql: ${TABLE}.page_website_clicks_logged_in_unique ;;
  }

  dimension: platform_channel_record_key {
    type: string
    sql: ${TABLE}.platform_channel_record_key ;;
  }

  dimension: record_id {
    type: string
    sql: ${TABLE}.record_id ;;
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
    datatype: datetime
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
    datatype: datetime
    sql: ${TABLE}.time_fetched_local ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
