view: for_website_reach {
  derived_table: {
    sql:
      SELECT
    "Website Reach" AS metrics,
    cast(format("%'d",SUM(pageviews)) as string) AS all_values
    FROM
    `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_bydate_lastp_v2`
    UNION ALL
    SELECT
    "from 90 days ago" AS metrics,
    concat(round((safe_divide(t.pageviews1,
    t.pageviews2)-1)*100,1)," %") AS all_values
    FROM (
    SELECT
    p.meausures,
    p.pageviews1,
    q.pageviews2
    FROM (
    SELECT
    "value" AS meausures,
    SUM(pageviews) AS pageviews1
    FROM
    `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_bydate_lastp_v2`) p
    LEFT JOIN (
    SELECT
    "value" AS meausures,
    SUM(pageviews) AS pageviews2
    FROM
    `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_bydate_lastpx_v2`) q
    ON
    p.meausures=q.meausures) t
    UNION ALL
    SELECT
    " from last year" AS metrics,
    concat(round((safe_divide(m.pageviews1,
    m.pageviews2)-1)*100,1)," %") AS all_values
    FROM (
    SELECT
    k.meausures,
    k.pageviews1,
    l.pageviews2
    FROM (
    SELECT
    "value" AS meausures,
    SUM(pageviews) AS pageviews1
    FROM
    `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_bydate_lastp_v2`) k
    LEFT JOIN (
    SELECT
    "value" AS meausures,
    SUM(pageviews) AS pageviews2
    FROM
    `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_bydate_yearago_v2`) l
    ON
    k.meausures=l.meausures) m
        ;;
  }

  dimension: metrics {
    type: string
    sql: ${TABLE}.metrics
      ;;
  }

  dimension: all_values {
    type: string
    sql: ${TABLE}.all_values ;;
  }
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: total_views_90_days_change {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
