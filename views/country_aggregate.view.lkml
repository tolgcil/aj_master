# The name of this view in Looker is "Country Aggregate"
view: country_aggregate {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.country_aggregate`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Aja Pv" in Explore.

  dimension: aja_pv {
    type: number
    sql: ${TABLE}.aja_pv ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_aja_pv {
    type: sum
    sql: ${aja_pv} ;;
  }

  measure: average_aja_pv {
    type: average
    sql: ${aja_pv} ;;
  }

  dimension: aje_pv {
    type: number
    sql: ${TABLE}.aje_pv ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: total_views {
    type: number
    sql: ${TABLE}.total_views ;;
  }

  dimension: yt_views {
    type: number
    sql: ${TABLE}.yt_views ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
