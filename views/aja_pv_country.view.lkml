# The name of this view in Looker is "Aja Pv Country"
view: aja_pv_country {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ajmn-rs-bq.al_jazeera_data_models_poc.aja_pv_country_v2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Country" in Explore.

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

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
