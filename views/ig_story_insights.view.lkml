# The name of this view in Looker is "Ig Story Insights"
view: ig_story_insights {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.ig_story_insights`
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
  # This dimension will be called "Exits" in Explore.

  dimension: exits {
    type: number
    sql: ${TABLE}.exits ;;
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

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }

  dimension: record_id {
    type: string
    sql: ${TABLE}.record_id ;;
  }

  dimension: replies {
    type: number
    sql: ${TABLE}.replies ;;
  }

  dimension: taps_back {
    type: number
    sql: ${TABLE}.taps_back ;;
  }

  dimension: taps_forward {
    type: number
    sql: ${TABLE}.taps_forward ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
