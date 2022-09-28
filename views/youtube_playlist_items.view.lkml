# The name of this view in Looker is "Youtube Playlist Items"
view: youtube_playlist_items {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `al_jazeera_data_models_poc.youtube_playlist_items`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Channel ID" in Explore.

  dimension: channel_id {
    type: string
    sql: ${TABLE}.channel_id ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created_on_db {
    type: time
    description: "bq-datetime"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_on_db ;;
  }

  dimension: deleted_from_playlist {
    type: yesno
    sql: ${TABLE}.deleted_from_playlist ;;
  }

  dimension: playlist_id {
    type: string
    sql: ${TABLE}.playlist_id ;;
  }

  dimension: playlist_item_id {
    type: string
    sql: ${TABLE}.playlist_item_id ;;
  }

  dimension: playlist_title {
    type: string
    sql: ${TABLE}.playlist_title ;;
  }

  dimension: record_id {
    type: string
    sql: ${TABLE}.record_id ;;
  }

  dimension_group: updated_on_db {
    type: time
    description: "bq-datetime"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_on_db ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
