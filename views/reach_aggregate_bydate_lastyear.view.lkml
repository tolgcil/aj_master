# The name of this view in Looker is "Reach Aggregate Bydate Lastyear"
view: reach_aggregate_bydate_lastyear {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_bydate_lastyear_v2`
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
     sql: ${TABLE}.date;;
  }

filter: date_filter {
  type: date
}

measure: fb_views_selected {
  type: sum
  sql: case when {% condition date_filter %} ${date_raw} {% endcondition %} then ${TABLE}.fb_views end;;
}

measure: fb_views_last_year {
  type: sum
  sql: case when {% condition date_filter %}  date_add(date(${date_raw}), interval 1 year) {% endcondition %} then ${TABLE}.fb_views end ;;

  #date_diff(extract(year from ${date_date})
  #date_add(year,-1,${date_date})
}
  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Fb Views" in Explore.


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fb_views {
    type: sum
    sql: ${TABLE}.fb_views ;;
  }

  measure: pageviews {
    type: sum
    sql: ${TABLE}.pageviews ;;
  }

  measure: total_views {
    type: sum
    sql: ${TABLE}.total_views ;;
  }

  measure: yt_views {
    type: sum
    sql: ${TABLE}.yt_views ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
