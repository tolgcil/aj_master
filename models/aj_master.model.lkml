# Define the database connection to be used for this model.
connection: "aj_data_models_poc"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/*.dashboard"


datagroup: ajmn_poc_dashboards_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ajmn_poc_dashboards_default_datagroup

#will be used in Devices section in the dashboard
explore: youtube_device {
}

#explore: ahmet {
#  fields: [ALL_FIELDS*]
#  from: reach_aggregate_bydate_lastyear
#  join: mehmet {
#    from: reach_aggregate_bydate_lastyear
#    sql_on: ${ahmet.date_date}=${mehmet.date_date} ;;
#    relationship: many_to_one
#  }
#}
explore: reach_aggregate_lastyear_unpivot_v2 {
  label: "Unpivot Chart"
}

explore: for_last_years{}

explore: reach_aggregate_bydate_lastyear {}

explore: top_countries2 {}

explore: country_aggregate {}

#will be used in Top Countries section of the dashboard
explore: youtube_country {
}

#will be used in Devices section in the dashboard
#explore: device_aggregate {}

#will be used in Total Reach History section of the dashboard
explore: reach_aggregate_byperiod_history {}

#will be used in Reach Details by Property and Reach Contribution by Property
#sections of the dashboard
explore: reach_aggregate_byalias_change {}

explore: reach_aggregate_bydate_lastp {
  join: reach_aggregate_bydate_yearago {
    type: left_outer
    sql_on: ${reach_aggregate_bydate_yearago.date_date} = ${reach_aggregate_bydate_lastp.date_date} ;;
    #sql_on: date_add(${reach_aggregate_bydate_yearago.date_date},INTERVAL 1 YEAR) = ${reach_aggregate_bydate_lastp.date_date} ;;
    relationship: many_to_one
  }
}

explore: reach_aggregate_lastyear {}

explore: reach_aggregate_byalias_lastpx {}

explore: reach_aggregate_bydate_lastpx {}

explore: device_aggregate {}

explore: top_countries {}

explore: reach_aggregate_byalias_lastp {}

explore: reach_aggregate_bydate_yearago {}

explore: reach_aggregate_lastp {}

explore: reach_aggregate_lastpx {}

explore: total_views_90_days_change {
  hidden: yes
}

explore: total_views_yoy_change {
  hidden: yes
}

explore: for_website_reach {
  hidden: yes
}

explore: for_channel_reach {
  hidden: yes
}
