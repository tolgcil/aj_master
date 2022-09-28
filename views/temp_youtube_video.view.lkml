# The name of this view in Looker is "Temp Youtube Video"
view: temp_youtube_video {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.temp_youtube_video`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Afv Overlay Enabled" in Explore.

  dimension: afv_overlay_enabled {
    type: string
    sql: ${TABLE}.afv_overlay_enabled ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: channel_display_name {
    type: string
    sql: ${TABLE}.channel_display_name ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.channel_id ;;
  }

  dimension: claim_custom_id {
    type: string
    sql: ${TABLE}.claim_custom_id ;;
  }

  dimension: claim_id {
    type: string
    sql: ${TABLE}.claim_id ;;
  }

  dimension: claim_source {
    type: string
    sql: ${TABLE}.claim_source ;;
  }

  dimension: claimed_by_another_owner {
    type: string
    sql: ${TABLE}.claimed_by_another_owner ;;
  }

  dimension: claimed_by_this_owner {
    type: string
    sql: ${TABLE}.claimed_by_this_owner ;;
  }

  dimension: comment_count {
    type: number
    sql: ${TABLE}.comment_count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_comment_count {
    type: sum
    sql: ${comment_count} ;;
  }

  measure: average_comment_count {
    type: average
    sql: ${comment_count} ;;
  }

  dimension: comments_allowed {
    type: string
    sql: ${TABLE}.comments_allowed ;;
  }

  dimension: embedding_allowed {
    type: string
    sql: ${TABLE}.embedding_allowed ;;
  }

  dimension: favorite_count {
    type: number
    sql: ${TABLE}.favorite_count ;;
  }

  dimension: in_video_ads_enabled {
    type: string
    sql: ${TABLE}.in_video_ads_enabled ;;
  }

  dimension: instream_ads_enabled {
    type: string
    sql: ${TABLE}.instream_ads_enabled ;;
  }

  dimension: is_licensed {
    type: string
    sql: ${TABLE}.is_licensed ;;
  }

  dimension: isrc {
    type: string
    sql: ${TABLE}.isrc ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.length ;;
  }

  dimension: long_instream_enabled {
    type: string
    sql: ${TABLE}.long_instream_enabled ;;
  }

  dimension: midrolls_enabled {
    type: string
    sql: ${TABLE}.midrolls_enabled ;;
  }

  dimension: offweb_syndicatable {
    type: string
    sql: ${TABLE}.offweb_syndicatable ;;
  }

  dimension: policy {
    type: string
    sql: ${TABLE}.policy ;;
  }

  dimension: postrolls_enabled {
    type: string
    sql: ${TABLE}.postrolls_enabled ;;
  }

  dimension: prerolls_enabled {
    type: string
    sql: ${TABLE}.prerolls_enabled ;;
  }

  dimension: ratings_allowed {
    type: string
    sql: ${TABLE}.ratings_allowed ;;
  }

  dimension: responses_allowed {
    type: string
    sql: ${TABLE}.responses_allowed ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: third_party_ads_enabled {
    type: string
    sql: ${TABLE}.third_party_ads_enabled ;;
  }

  dimension: time_uploaded {
    type: string
    sql: ${TABLE}.time_uploaded ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: trueview_inslate_enabled {
    type: string
    sql: ${TABLE}.trueview_inslate_enabled ;;
  }

  dimension: trueview_instream_enabled {
    type: string
    sql: ${TABLE}.trueview_instream_enabled ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  dimension: view_count {
    type: number
    sql: ${TABLE}.view_count ;;
  }

  measure: count {
    type: count
    drill_fields: [channel_display_name, username]
  }
}
