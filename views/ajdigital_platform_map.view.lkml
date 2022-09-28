# The name of this view in Looker is "Ajdigital Platform Map"
view: ajdigital_platform_map {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.ajdigital_platform_map`
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: new_channel_name {
    type: string
    sql: ${TABLE}.new_channel_name ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: platform_acct_name {
    type: string
    sql: ${TABLE}.platform_acct_name ;;
  }

  dimension: platform_channel_record_key {
    type: string
    sql: ${TABLE}.platform_channel_record_key ;;
  }

  measure: count {
    type: count
    drill_fields: [channel_name, name, new_channel_name, platform_acct_name]
  }
}
