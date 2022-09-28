# The name of this view in Looker is "Platform Media Stat"
view: platform_media_stat {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.platform_media_stat`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Ad Views" in Explore.

  dimension: ad_views {
    type: number
    sql: ${TABLE}.ad_views ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ad_views {
    type: sum
    sql: ${ad_views} ;;
  }

  measure: average_ad_views {
    type: average
    sql: ${ad_views} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: as_of {
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
    sql: ${TABLE}.as_of_date ;;
  }

  dimension: avg_view_length {
    type: number
    sql: ${TABLE}.avg_view_length ;;
  }

  dimension: avg_view_percent {
    type: number
    sql: ${TABLE}.avg_view_percent ;;
  }

  dimension: comments {
    type: number
    sql: ${TABLE}.comments ;;
  }

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
    datatype: datetime
    sql: ${TABLE}.created_on_db ;;
  }

  dimension: dislikes {
    type: number
    sql: ${TABLE}.dislikes ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}.likes ;;
  }

  dimension: org_views {
    type: number
    sql: ${TABLE}.org_views ;;
  }

  dimension: platform_media_record_key {
    type: string
    sql: ${TABLE}.platform_media_record_key ;;
  }

  dimension: record_id {
    type: string
    sql: ${TABLE}.record_id ;;
  }

  dimension: shares {
    type: number
    sql: ${TABLE}.shares ;;
  }

  dimension: subscribers {
    type: number
    sql: ${TABLE}.subscribers ;;
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
    datatype: datetime
    sql: ${TABLE}.updated_on_db ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
