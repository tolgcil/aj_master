view: for_last_years {
  derived_table: {
    sql: SELECT
      a.date,
      a.yt_views,
      a.fb_views,
      a.pageviews,
      a.total_views,
      b.yt_views as last_yt_views,
      b.fb_views as last_fb_views,
      b.pageviews as last_pageviews,
      b.total_views as last_total_views
      FROM `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_bydate_lastyear_v2` AS A
      JOIN `ajmn-rs-bq.al_jazeera_data_models_poc.reach_aggregate_bydate_lastyear_v2` AS B
      ON
      EXTRACT (YEAR FROM A.date ) = EXTRACT (YEAR FROM B.date )+1 AND
         EXTRACT (MONTH FROM A.date ) = EXTRACT (MONTH FROM B.date ) AND
          EXTRACT (DAY FROM A.date ) = EXTRACT (DAY FROM B.date );;
  }

  measure: count {
    type: count
  }

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

  measure: yt_views {
    type: sum
    sql: ${TABLE}.yt_views ;;
  }

  measure: fb_views {
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

  measure: last_yt_views {
    type: sum
    sql: ${TABLE}.last_yt_views ;;
  }

  measure: last_fb_views {
    type: sum
    sql: ${TABLE}.last_fb_views ;;
  }

  measure: last_pageviews {
    type: sum
    sql: ${TABLE}.last_pageviews ;;
  }

  measure: last_total_views {
    type: sum
    sql: ${TABLE}.last_total_views ;;
  }


}
