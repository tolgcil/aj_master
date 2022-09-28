# The name of this view in Looker is "Jw All Youtube Views Lastyear"
view: jw_all_youtube_views_lastyear {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.jw_all_youtube_views_lastyear`
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

  dimension: platform_acct_id {
    type: string
    sql: ${TABLE}.platform_acct_id ;;
  }

  dimension: platform_acct_name {
    type: string
    sql: ${TABLE}.platform_acct_name ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: record {
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
    sql: ${TABLE}.record_date ;;
  }

  dimension: tot_dislikes {
    type: number
    sql: ${TABLE}.tot_dislikes ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tot_dislikes {
    type: sum
    sql: ${tot_dislikes} ;;
  }

  measure: average_tot_dislikes {
    type: average
    sql: ${tot_dislikes} ;;
  }

  dimension: tot_likes {
    type: number
    sql: ${TABLE}.tot_likes ;;
  }

  dimension: tot_views {
    type: number
    sql: ${TABLE}.tot_views ;;
  }

  measure: count {
    type: count
    drill_fields: [channel_name, platform_acct_name]
  }
}
