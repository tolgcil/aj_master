# The name of this view in Looker is "Ig Pages"
view: ig_pages {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.ig_pages`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Audience City" in Explore.

  dimension: audience_city {
    type: string
    sql: ${TABLE}.audience_city ;;
  }

  dimension: audience_country {
    type: string
    sql: ${TABLE}.audience_country ;;
  }

  dimension: audience_gender_age {
    type: string
    sql: ${TABLE}.audience_gender_age ;;
  }

  dimension: audience_locale {
    type: string
    sql: ${TABLE}.audience_locale ;;
  }

  dimension: email_contacts {
    type: number
    sql: ${TABLE}.email_contacts ;;
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
    datatype: datetime
    sql: ${TABLE}.end_time ;;
  }

  dimension: follower_count {
    type: number
    sql: ${TABLE}.follower_count ;;
  }

  dimension: get_directions_clicks {
    type: number
    sql: ${TABLE}.get_directions_clicks ;;
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

  dimension: phone_call_clicks {
    type: number
    sql: ${TABLE}.phone_call_clicks ;;
  }

  dimension: platform_channel_record_key {
    type: string
    sql: ${TABLE}.platform_channel_record_key ;;
  }

  dimension: profile_views {
    type: number
    sql: ${TABLE}.profile_views ;;
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }

  dimension: record_id {
    type: string
    sql: ${TABLE}.record_id ;;
  }

  dimension: text_message_clicks {
    type: number
    sql: ${TABLE}.text_message_clicks ;;
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

  dimension: website_clicks {
    type: number
    sql: ${TABLE}.website_clicks ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
