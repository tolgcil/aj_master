# The name of this view in Looker is "Iso 3166 Country Codes"
view: iso_3166_country_codes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.iso_3166_country_codes`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alpha 2" in Explore.

  dimension: alpha_2 {
    type: string
    sql: ${TABLE}.alpha_2 ;;
  }

  dimension: alpha_3 {
    type: string
    sql: ${TABLE}.alpha_3 ;;
  }

  dimension: country_code {
    type: number
    sql: ${TABLE}.country_code ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_country_code {
    type: sum
    sql: ${country_code} ;;
  }

  measure: average_country_code {
    type: average
    sql: ${country_code} ;;
  }

  dimension: intermediate_region {
    type: string
    sql: ${TABLE}.intermediate_region ;;
  }

  dimension: intermediate_region_code {
    type: number
    sql: ${TABLE}.intermediate_region_code ;;
  }

  dimension: iso_3166_2 {
    type: string
    sql: ${TABLE}.iso_3166_2 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: region_code {
    type: number
    sql: ${TABLE}.region_code ;;
  }

  dimension: sub_region {
    type: string
    sql: ${TABLE}.sub_region ;;
  }

  dimension: sub_region_code {
    type: number
    sql: ${TABLE}.sub_region_code ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
