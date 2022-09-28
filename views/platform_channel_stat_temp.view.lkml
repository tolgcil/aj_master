# The name of this view in Looker is "Platform Channel Stat Temp"
view: platform_channel_stat_temp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.platform_channel_stat_temp`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

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

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Platform Channel Record Key" in Explore.

  dimension: platform_channel_record_key {
    type: string
    sql: ${TABLE}.platform_channel_record_key ;;
  }

  dimension: subscribers_gained {
    type: number
    sql: ${TABLE}.subscribers_gained ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_subscribers_gained {
    type: sum
    sql: ${subscribers_gained} ;;
  }

  measure: average_subscribers_gained {
    type: average
    sql: ${subscribers_gained} ;;
  }

  dimension: subscribers_lost {
    type: number
    sql: ${TABLE}.subscribers_lost ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
