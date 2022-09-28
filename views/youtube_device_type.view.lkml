# The name of this view in Looker is "Youtube Device Type"
view: youtube_device_type {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.youtube_device_type`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Device" in Explore.

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: device_type {
    type: number
    sql: ${TABLE}.device_type ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_device_type {
    type: sum
    sql: ${device_type} ;;
  }

  measure: average_device_type {
    type: average
    sql: ${device_type} ;;
  }

  dimension: ga_device_category {
    type: string
    sql: ${TABLE}.ga_deviceCategory ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
