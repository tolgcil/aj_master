# The name of this view in Looker is "Competitor Fb Pages Daily Test"
view: competitor_fb_pages_daily_test {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.competitor_fb_pages_daily_test`
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
  # This dimension will be called "Fan Count" in Explore.

  dimension: fan_count {
    type: number
    sql: ${TABLE}.fan_count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fan_count {
    type: sum
    sql: ${fan_count} ;;
  }

  measure: average_fan_count {
    type: average
    sql: ${fan_count} ;;
  }

  dimension: page_id {
    type: string
    sql: ${TABLE}.page_id ;;
  }

  dimension: talking_about_count {
    type: number
    sql: ${TABLE}.talking_about_count ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
