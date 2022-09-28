# Define the database connection to be used for this model.
connection: "aj_data_models_poc"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: aj_master_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aj_master_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Aj Master"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: aja_pv_country {}

explore: test_table_aggregate_bydate_lastyear {}

explore: aje_pv_country {}

explore: ajdigital_platform_map {}

explore: test_platform_media_temp_test {}

explore: aja_pv_device {}

explore: test_facebook_pages_withdatetime {}

explore: test_facebook_pages {}

explore: competitor_fb_posts_hourly_test {}

explore: competitor_fb_pages_daily_test {}

explore: deneme_gcs {}

explore: device_aggregate {}

explore: country_aggregate {}

explore: deneme {}

explore: aje_pv_device {}

explore: distinct_name_alias {}

explore: facebook_daily_test {}

explore: facebook_pages {}

explore: facebook_post_comments {}

explore: facebook_hourly_test {}

explore: facebook_post_comments_temp {}

explore: facebook_weekly_test {}

explore: fb_insight_metrics_test {}

explore: forecast_data_reachaggbyperhist {}

explore: ga_aja_pv_by_date_country_device {}

explore: ga_ajplus_pageviews_french {}

explore: ga_ajplus_pageviews_arabic {}

explore: ga_ajplus_pageviews_english {}

explore: ga_aje_pv_by_date_country_device {}

explore: ga_ajplus_pageviews_spanish {}

explore: ga_pageviews_lastyear_aja {}

explore: ga_pageviews_lastyear_ajam {}

explore: ga_pageviews_lastyear_aje {}

explore: ga_pageviews_lastyear_ajdoc {}

explore: ga_pageviews_lastyear_ajmub {}

explore: ga_pageviews_lastyear_balkans {}

explore: ga_pageviews_lastyear_china {}

explore: ga_pageviews_lastyear_ajturk {}

explore: ga_pageviews_lastyear_sadeem {}

explore: ig_pages {}

explore: ig_post {}

explore: ig_post_daily {}

explore: ig_story {}

explore: ig_post_weekly {}

explore: iso_3166_country_codes {}

explore: ig_story_insights {}

explore: ig_post_hourly {}

explore: jw_all_facebook_views_lastyear {}

explore: jw_all_youtube_views_lastyear {}

explore: jw_youtube_views_by_device {}

explore: jw_youtube_views_by_country {}

explore: multiple_insert_test_table {}

explore: platform_channel {}

explore: platform_channel_stat {}

explore: platform_channel_stat_tmp {}

explore: platform_channel_stat_temp {}

explore: platform_media {}

explore: platform_media_temp {}

explore: platform_media_stat {}

explore: predictions_2022_09_27_t03_20_31_127_z_291 {}

explore: predictions_2022_09_27_t03_28_16_824_z_299 {}

explore: predictions_2022_09_27_t03_27_00_822_z_730 {}

explore: reach_aggregate_byalias_change {}

explore: reach_aggregate_byalias_lastp {}

explore: reach_aggregate_byalias_lastpx {}

explore: reach_aggregate_byalias_yearago {}

explore: reach_aggregate_bydate_lastyear {}

explore: reach_aggregate_bydate_lastpx {}

explore: reach_aggregate_bydate_lastp {}

explore: reach_aggregate_bydate_yearago {}

explore: reach_aggregate_byperiod_history {}

explore: reach_aggregate_lastyear {}

explore: reach_aggregate_lastpx {}

explore: reach_aggregate_yearago {}

explore: reach_aggregate_lastp {}

explore: temp_youtube_video {}

explore: top_countries {}

explore: top_countries2 {}

explore: video_facebook_lastpx {}

explore: video_facebook_yearago {}

explore: video_facebook_lastyear {}

explore: video_youtube_lastpx {}

explore: video_youtube_lastyear {}

explore: video_youtube_yearago {}

explore: view_aggregate_bydate_lastyear {}

explore: view_ga_aja_pv_by_date_country_device {}

explore: view_ga_aje_pv_by_date_country_device {}

explore: youtube_country {}

explore: youtube_device_type {}

explore: youtube_device {}

explore: youtube_file_logger {}

explore: youtube_playlist_items {}

explore: youtube_playlist_items_test {}

explore: youtube_playlists {}

explore: youtube_playlists_test {}

explore: youtube_video_comments {}

explore: youtube_video_comments_temp {}

explore: youtube_video_user_activity {}

explore: youtube_video_device_type_and_operating_system {}
