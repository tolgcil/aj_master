# The name of this view in Looker is "Platform Channel"
view: platform_channel {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.platform_channel`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Channel Name" in Explore.

  dimension: channel_name {
    type: string
    sql: ${TABLE}.channel_name ;;
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
    datatype: datetime
    sql: ${TABLE}.created_on ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: is_etl_enabled {
    type: number
    sql: ${TABLE}.is_etl_enabled ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_is_etl_enabled {
    type: sum
    sql: ${is_etl_enabled} ;;
  }

  measure: average_is_etl_enabled {
    type: average
    sql: ${is_etl_enabled} ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: linked_id {
    type: string
    sql: ${TABLE}.linked_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: platform_acct_id {
    type: string
    sql: ${TABLE}.platform_acct_id ;;
  }

  dimension: platform_acct_name {
    type: string
    sql: ${TABLE}.platform_acct_name ;;
  }

  dimension: platform_channel_record_key {
    type: string
    sql: ${TABLE}.platform_channel_record_key ;;
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
    datatype: datetime
    sql: ${TABLE}.published_at ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
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
    datatype: datetime
    sql: ${TABLE}.updated_on ;;
  }

  measure: count {
    type: count
    drill_fields: [channel_name, platform_acct_name, name]
  }
}
