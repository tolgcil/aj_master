# The name of this view in Looker is "Reach Aggregate Lastyear"
view: reach_aggregate_lastyear {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_lastyear_v2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alias" in Explore.

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

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

  dimension: fb_views {
    type: number
    sql: ${TABLE}.fb_views ;;
  }

  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
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
  measure: total_fb_views {
    type: sum
    sql: ${fb_views} ;;
  }

  measure: total_views_ {
    type: sum
    sql: ${total_views} ;;
  }

  measure: total_pageviews  {
    type: sum
    sql: ${pageviews} ;;
  }

  measure: total_yt_views {
    type: sum
    sql: ${yt_views} ;;
  }

  measure: fb_percent {
    type: number
    sql: ${total_fb_views}/${total_views_} ;;
  }

  measure: yt_percent {
    type: number
    sql:  ${total_yt_views}/${total_views_};;
  }

  measure: pv_percent {
    type: number
    sql:  ${total_pageviews}/${total_views_} ;;
  }

  measure: total_reach {
    type: percent_of_total
    sql: ${total_views_} ;;
  }

  parameter: linechart_parameter {
    type: unquoted
    description: "To be used with the Line Chart Value field"
    allowed_value: {label: "Facebook Reach" value: "FR"}
    allowed_value: {label: "Pageview Reach" value: "PR"}
    allowed_value: {label: "Youtube Reach" value: "YR"}
    allowed_value: {label: "Total Reach" value: "TR"}
  }

  measure: linechart_value {
    type: number
    description: "To be used with the Line Chart Parameter field"
    sql: {%if linechart_parameter._parameter_value == "FR" %}
        ${total_fb_views}
       {%elsif linechart_parameter._parameter_value == "PR" %}
        ${total_pageviews}
       {%elsif linechart_parameter._parameter_value == "YR" %}
        ${total_yt_views}
       {% else %}
        ${total_views_}
       {% endif %};;
  }


}
