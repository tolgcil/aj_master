# The name of this view in Looker is "Ga Pageviews Lastyear China"
view: ga_pageviews_lastyear_china {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.ga_pageviews_lastyear_china`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Pageviews" in Explore.

  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_pageviews {
    type: sum
    sql: ${pageviews} ;;
  }

  measure: average_pageviews {
    type: average
    sql: ${pageviews} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
