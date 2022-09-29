- dashboard: master_v2
  title: Master Digital Reach
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 1 hour
  preferred_slug: iga1l5Eno7bALlYHccjxWQ
  elements:
  - title: Total Reach History
    name: Total Reach History
    model: aj_master
    explore: reach_aggregate_byperiod_history
    type: looker_line
    fields: [reach_aggregate_byperiod_history.total_views, reach_aggregate_byperiod_history.facebook_views,
      reach_aggregate_byperiod_history.youtube_views, reach_aggregate_byperiod_history.page_views,
      reach_aggregate_byperiod_history.date_date]
    fill_fields: [reach_aggregate_byperiod_history.date_date]
    sorts: [reach_aggregate_byperiod_history.date_date desc]
    query_timezone: user_timezone
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: reach_aggregate_byperiod_history.facebook_views
        forecast_n: 30
        forecast_interval: day
      - confidence_interval: 0.95
        field_name: reach_aggregate_byperiod_history.page_views
        forecast_n: 30
        forecast_interval: day
      - confidence_interval: 0.95
        field_name: reach_aggregate_byperiod_history.total_views
        forecast_n: 30
        forecast_interval: day
      - confidence_interval: 0.95
        field_name: reach_aggregate_byperiod_history.youtube_views
        forecast_n: 30
        forecast_interval: day
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: reach_aggregate_byperiod_history.total_views,
            id: reach_aggregate_byperiod_history.total_views, name: Total Views},
          {axisId: reach_aggregate_byperiod_history.facebook_views, id: reach_aggregate_byperiod_history.facebook_views,
            name: Facebook Views}, {axisId: reach_aggregate_byperiod_history.youtube_views,
            id: reach_aggregate_byperiod_history.youtube_views, name: Youtube Views}],
        showLabels: true, showValues: true, valueFormat: '[<999950000]0.0,, "M";0.0,,,
          "B"', unpinAxis: false, tickDensity: default, tickDensityCustom: 0, type: linear}]
    series_types: {}
    series_colors:
      reach_aggregate_byperiod_history.youtube_views: "#77c0e5"
      reach_aggregate_byperiod_history.facebook_views: "#f9b8ca"
      reach_aggregate_byperiod_history.total_views: "#8ef9db"
      reach_aggregate_byperiod_history.page_views: "#808080"
    series_labels:
      reach_aggregate_byperiod_history.page_views: Website Reach
    series_point_styles: {}
    trend_lines: []
    swap_axes: false
    defaults_version: 1
    refresh: 1 day
    listen:
      Date: reach_aggregate_byperiod_history.date_date
    row: 7
    col: 0
    width: 24
    height: 9
  - title: Reach Contribution by Property
    name: Reach Contribution by Property
    model: aj_master
    explore: reach_aggregate_byalias_change
    type: looker_pie
    fields: [reach_aggregate_byalias_change.alias, reach_aggregate_byalias_change.total_views]
    sorts: [reach_aggregate_byalias_change.total_views desc 0]
    total: true
    value_labels: legend
    label_type: labPer
    series_colors:
      AJ Arabic: "#77C0E5"
      AJ English: "#F9B8CA"
      AJ+ Arabi: "#8AF296"
      AJ Mubasher: "#A56BDB"
      AJ Balkans: "#F9F1A9"
      AJ Documentary: "#d46297"
      AlJazeera O2: "#e09a48"
      PDI: "#74fcf3"
      Al Jazeera Balkans Video: "#803133"
      Rightly: "#ffd11b"
      Al Jazeera: "#283cf0"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    refresh: 1 day
    listen:
      Property: reach_aggregate_byalias_change.alias
    row: 16
    col: 0
    width: 13
    height: 8
  - title: Properties
    name: Properties
    model: aj_master
    explore: reach_aggregate_byalias_change
    type: looker_grid
    fields: [reach_aggregate_byalias_change.alias, reach_aggregate_byalias_change.total_views]
    sorts: [reach_aggregate_byalias_change.total_views desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, label: "% of Total Reach", value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_of_column_sum, table_calculation: of_total_reach,
        args: [reach_aggregate_byalias_change.total_views], _kind_hint: measure, _type_hint: number,
        id: 4zP7tGUXJv}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [of_total_reach, reach_aggregate_byalias_change.alias]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      reach_aggregate_byalias_change.alias: Property
    series_cell_visualizations:
      reach_aggregate_byalias_change.total_percent:
        is_active: false
    series_text_format:
      reach_aggregate_byalias_change.alias:
        align: left
    series_value_format:
      of_total_reach:
        name: percent_2
        decimals: '2'
        format_string: "#,##0.00%"
        label: Percent (2)
        label_prefix: Percent
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [reach_aggregate_byalias_change.total_views]
    refresh: 1 day
    listen:
      Property: reach_aggregate_byalias_change.alias
    row: 24
    col: 13
    width: 11
    height: 8
  - title: Reach Details by Property
    name: Reach Details by Property
    model: aj_master
    explore: reach_aggregate_byalias_change
    type: looker_grid
    fields: [reach_aggregate_byalias_change.alias, reach_aggregate_byalias_change.total_views,
      reach_aggregate_byalias_change.pop_change, reach_aggregate_byalias_change.yoy_change,
      reach_aggregate_byalias_change.yt_percent, reach_aggregate_byalias_change.fb_percent,
      reach_aggregate_byalias_change.pv_percent]
    sorts: [reach_aggregate_byalias_change.total_views desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, label: Percent of Reach Aggregate
          Byalias Change Total Views, value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_of_column_sum, table_calculation: percent_of_reach_aggregate_byalias_change_total_views,
        args: [reach_aggregate_byalias_change.total_views], _kind_hint: measure, _type_hint: number,
        id: hj7VajjeqH}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", reach_aggregate_byalias_change.alias, percent_of_reach_aggregate_byalias_change_total_views,
      reach_aggregate_byalias_change.pop_change, reach_aggregate_byalias_change.yoy_change,
      reach_aggregate_byalias_change.yt_percent, reach_aggregate_byalias_change.fb_percent,
      reach_aggregate_byalias_change.pv_percent]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      reach_aggregate_byalias_change.alias: Property
      reach_aggregate_byalias_change.pop_change: "% 90 Day Change"
      reach_aggregate_byalias_change.yoy_change: "% Yearly Change"
      reach_aggregate_byalias_change.yt_percent: "% from Youtube"
      reach_aggregate_byalias_change.fb_percent: "% from Facebook"
      percent_of_reach_aggregate_byalias_change_total_views: "% Total Reach"
      reach_aggregate_byalias_change.pv_percent: "% from Pageviews"
    series_cell_visualizations:
      reach_aggregate_byalias_change.pop_change:
        is_active: false
    series_text_format:
      reach_aggregate_byalias_change.pop_change:
        align: left
      reach_aggregate_byalias_change.yoy_change:
        align: left
      reach_aggregate_byalias_change.yt_percent:
        align: left
      reach_aggregate_byalias_change.fb_percent:
        align: left
      percent_of_reach_aggregate_byalias_change_total_views:
        align: left
      reach_aggregate_byalias_change.pv_percent:
        align: left
    series_value_format:
      percent_of_reach_aggregate_byalias_change_total_views:
        name: percent_2
        decimals: '2'
        format_string: "#,##0.00%"
        label: Percent (2)
        label_prefix: Percent
      reach_aggregate_byalias_change.pop_change: 0.00"%"
      reach_aggregate_byalias_change.yoy_change: 0.00"%"
      reach_aggregate_byalias_change.yt_percent: 0.00"%"
      reach_aggregate_byalias_change.fb_percent: 0.00"%"
      reach_aggregate_byalias_change.pv_percent: 0.00"%"
    hidden_fields: [reach_aggregate_byalias_change.total_views]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    refresh: 1 day
    listen:
      Property: reach_aggregate_byalias_change.alias
    row: 48
    col: 0
    width: 24
    height: 9
  - title: Total Reach Over Last 90 Days
    name: Total Reach Over Last 90 Days
    model: aj_master
    explore: reach_aggregate_bydate_lastp
    type: single_value
    fields: [reach_aggregate_bydate_lastp.total_views]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Reach Over Last "t" Days
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      reach_aggregate_bydate_lastp.total_views: Total Reach Over Last 90 Days
    series_cell_visualizations:
      reach_aggregate_bydate_lastp.total_views:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    note_state: collapsed
    note_display: below
    note_text: Total Reach Over Last 90 Days
    refresh: 1 day
    listen: {}
    row: 0
    col: 6
    width: 6
    height: 4
  - title: from last year
    name: from last year
    model: aj_master
    explore: total_views_yoy_change
    type: single_value
    fields: [total_views_yoy_change.period, total_views_yoy_change.total_views]
    sorts: [total_views_yoy_change.period desc]
    limit: 500
    dynamic_fields: [{args: [total_views_yoy_change.total_views], calculation_type: percent_of_previous,
        category: table_calculation, based_on: total_views_yoy_change.total_views,
        label: Percent of previous - Total Views Yoy Change Total Views, source_field: total_views_yoy_change.total_views,
        table_calculation: percent_of_previous_total_views_yoy_change_total_views,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true, id: BIY8LJUQef}, {category: table_calculation,
        label: Percent change from previous - Total Views Yoy Change Total Views,
        value_format: !!null '', value_format_name: percent_1, calculation_type: percent_difference_from_previous,
        table_calculation: percent_change_from_previous_total_views_yoy_change_total_views,
        args: [total_views_yoy_change.total_views], _kind_hint: measure, _type_hint: number,
        id: MEnkzEJW6K}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0.00%
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#00529c", color_application: {collection_id: ajmn-colors, palette_id: ajmn-colors-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 0, background_color: '', font_color: "#d4a10f", color_application: {
          collection_id: ajmn-colors, palette_id: ajmn-colors-sequential-0}, bold: false,
        italic: false, strikethrough: false, fields: !!null ''}]
    hidden_fields: [total_views_yoy_change.total_views, total_views_yoy_change.period]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    note_state: expanded
    note_display: below
    note_text: from last year
    refresh: 1 day
    listen: {}
    row: 0
    col: 12
    width: 6
    height: 4
  - title: from 90 days ago
    name: from 90 days ago
    model: aj_master
    explore: total_views_90_days_change
    type: single_value
    fields: [total_views_90_days_change.period, total_views_90_days_change.total_views]
    sorts: [total_views_90_days_change.period]
    limit: 500
    dynamic_fields: [{category: table_calculation, label: Percent change from previous
          - Total Views 90 Days Change Total Views, value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_difference_from_previous, table_calculation: percent_change_from_previous_total_views_90_days_change_total_views,
        args: [total_views_90_days_change.total_views], _kind_hint: measure, _type_hint: number,
        id: jcbCzNLUjz}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0.00%
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#00529c", color_application: {collection_id: ajmn-colors, palette_id: ajmn-colors-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 0, background_color: '', font_color: "#d4a10f", color_application: {
          collection_id: ajmn-colors, palette_id: ajmn-colors-sequential-0}, bold: false,
        italic: false, strikethrough: false, fields: !!null ''}]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      percent_change_from_previous_total_views_90_days_change_total_views: from 90
        Days Ago
    series_cell_visualizations:
      total_views_90_days_change.total_views:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    hidden_fields: [total_views_90_days_change.period, total_views_90_days_change.total_views]
    note_state: expanded
    note_display: below
    note_text: from 90 days ago
    refresh: 1 day
    listen: {}
    row: 0
    col: 18
    width: 6
    height: 4
  - title: Channel Reach Details Tile
    name: Channel Reach Details Tile
    model: aj_master
    explore: for_channel_reach
    type: looker_grid
    fields: [for_channel_reach.metrics, for_channel_reach.all_values]
    sorts: [for_channel_reach.metrics]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      for_channel_reach.metrics: Channel Reach Detail
      for_channel_reach.all_values: Values
    series_text_format:
      for_channel_reach.metrics:
        bold: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    refresh: 1 day
    title_hidden: true
    listen: {}
    row: 4
    col: 12
    width: 12
    height: 3
  - title: Reach Details Tile
    name: Reach Details Tile
    model: aj_master
    explore: for_website_reach
    type: looker_grid
    fields: [for_website_reach.metrics, for_website_reach.all_values]
    sorts: [for_website_reach.metrics desc]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      for_website_reach.metrics: Reach Detail
      for_website_reach.all_values: Values
    series_text_format:
      for_website_reach.metrics:
        bold: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    truncate_column_names: false
    refresh: 1 day
    title_hidden: true
    listen: {}
    row: 4
    col: 0
    width: 12
    height: 3
  - name: ''
    type: text
    title_text: ''
    body_text: <html><img src="https://www.ifj.org/fileadmin/news_import/Al_Jazeera_newspaper.jpg"></html>
    row: 0
    col: 0
    width: 6
    height: 4
  - title: Devices (excluding Facebook)
    name: Devices (excluding Facebook)
    model: aj_master
    explore: device_aggregate
    type: looker_pie
    fields: [device_aggregate.device_category, device_aggregate.total_views]
    sorts: [device_aggregate.total_views desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, label: Percent of Device Views,
        value_format: !!null '', value_format_name: percent_0, calculation_type: percent_of_column_sum,
        table_calculation: percent_of_device_views, args: [device_aggregate.total_views],
        _kind_hint: measure, _type_hint: number}]
    query_timezone: UTC
    value_labels: legend
    label_type: labPer
    series_colors:
      mobile: "#CFFC88"
      desktop: "#CCD7FF"
      tablet: "#FCB7A9"
    hidden_fields: [device_aggregate.total_views]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Device Category: device_aggregate.device_category
    row: 32
    col: 0
    width: 13
    height: 8
  - title: Devices(excluding Facebook)
    name: Devices(excluding Facebook)
    model: aj_master
    explore: device_aggregate
    type: looker_grid
    fields: [device_aggregate.device_category, device_aggregate.total_views]
    sorts: [device_aggregate.total_views desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, label: "% of Total Reach", value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_of_column_sum, table_calculation: of_total_reach,
        args: [device_aggregate.total_views], _kind_hint: measure, _type_hint: number,
        id: sdrR0qjEhT}]
    query_timezone: UTC
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", of_total_reach, device_aggregate.device_category]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    value_labels: legend
    label_type: labPer
    series_colors:
      mobile: "#CFFC88"
      desktop: "#CCD7FF"
      tablet: "#FCB7A9"
    hidden_fields: [device_aggregate.total_views]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Device Category: device_aggregate.device_category
    row: 32
    col: 13
    width: 11
    height: 8
  - title: Top Countries(excluding Facebook)
    name: Top Countries(excluding Facebook)
    model: aj_master
    explore: top_countries
    type: looker_grid
    fields: [top_countries.country, top_countries.total_percent_total]
    sorts: [top_countries.total_percent_total desc 0]
    limit: 500
    dynamic_fields: [{category: table_calculation, label: "% of Total Reach", value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_of_column_sum, table_calculation: of_total_reach,
        args: [top_countries.total_views], _kind_hint: measure, _type_hint: number,
        id: N2HAy6oRyi, is_disabled: true}]
    query_timezone: UTC
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", of_total_reach, top_countries.country]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      top_countries.total_percent_total:
        is_active: true
    series_value_format:
      top_countries.total_percent_total: '0.00'
    value_labels: legend
    label_type: labPer
    series_colors:
      Morocco: "#81F8C3"
      Saudi Arabia: "#F9C2FC"
      Algeria: "#D6F993"
      Egypt: "#7D9CF2"
      Iraq: "#FCC5BD"
      Germany: "#fa6553"
      Canada: "#d06ed4"
      India: "#e6ffee"
      France: "#1b13e6"
      Tunisia: "#ff36f6"
      United Arab Emirates: "#ff063d"
      Yemen: "#a32513"
      Australia: "#67e626"
      Sudan: "#5d30ff"
      Italy: "#f9ff08"
      Oman: "#472f26"
      Sweden: "#249114"
    hidden_fields: []
    series_types: {}
    defaults_version: 1
    listen:
      Country: top_countries.country
    row: 40
    col: 13
    width: 11
    height: 8
  - title: Reach by Property (last 90 days)
    name: Reach by Property (last 90 days)
    model: aj_master
    explore: reach_aggregate_byalias_lastp
    type: looker_column
    fields: [reach_aggregate_byalias_lastp.alias, reach_aggregate_byalias_lastp.yt_views,
      reach_aggregate_byalias_lastp.fb_views, reach_aggregate_byalias_lastp.pageviews]
    sorts: [reach_aggregate_byalias_lastp.yt_views desc 0]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: reach_aggregate_byalias_lastp.yt_views,
            id: reach_aggregate_byalias_lastp.yt_views, name: Yt Views}, {axisId: reach_aggregate_byalias_lastp.fb_views,
            id: reach_aggregate_byalias_lastp.fb_views, name: Fb Views}, {axisId: reach_aggregate_byalias_lastp.pageviews,
            id: reach_aggregate_byalias_lastp.pageviews, name: Pageviews}], showLabels: true,
        showValues: true, valueFormat: '[<999950000]0.0,, "M";0.0,,, "B"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      reach_aggregate_byalias_lastp.yt_views: "#77c0e5"
      reach_aggregate_byalias_lastp.fb_views: "#f9b8ca"
      reach_aggregate_byalias_lastp.pageviews: "#808080"
    series_labels:
      reach_aggregate_byalias_lastp.yt_views: Youtube Views
      reach_aggregate_byalias_lastp.fb_views: Facebook Views
      reach_aggregate_byalias_lastp.pageviews: Page Views
    defaults_version: 1
    listen:
      Property: reach_aggregate_byalias_lastp.alias
    row: 82
    col: 0
    width: 12
    height: 7
  - title: Reach by Channel (Same Period Last Year)
    name: Reach by Channel (Same Period Last Year)
    model: aj_master
    explore: reach_aggregate_bydate_yearago
    type: looker_line
    fields: [reach_aggregate_bydate_yearago.date_date, reach_aggregate_bydate_yearago.yt_views,
      reach_aggregate_bydate_yearago.fb_views, reach_aggregate_bydate_yearago.pageviews,
      reach_aggregate_bydate_yearago.total_views]
    fill_fields: [reach_aggregate_bydate_yearago.date_date]
    sorts: [reach_aggregate_bydate_yearago.date_date desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: reach_aggregate_bydate_yearago.yt_views,
            id: reach_aggregate_bydate_yearago.yt_views, name: Yt Views}, {axisId: reach_aggregate_bydate_yearago.fb_views,
            id: reach_aggregate_bydate_yearago.fb_views, name: Fb Views}, {axisId: reach_aggregate_bydate_yearago.pageviews,
            id: reach_aggregate_bydate_yearago.pageviews, name: Pageviews}, {axisId: reach_aggregate_bydate_yearago.total_views,
            id: reach_aggregate_bydate_yearago.total_views, name: Total Views}], showLabels: true,
        showValues: true, valueFormat: '[<999950000]0.0,, "M";0.0,,, "B"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      reach_aggregate_bydate_yearago.yt_views: "#77c0e5"
      reach_aggregate_bydate_yearago.fb_views: "#f9b8ca"
      reach_aggregate_bydate_yearago.total_views: "#8ef9db"
      reach_aggregate_bydate_yearago.pageviews: "#808080"
    series_labels:
      reach_aggregate_bydate_yearago.yt_views: Youtube Views
      reach_aggregate_bydate_yearago.fb_views: Facebook Views
      reach_aggregate_bydate_yearago.pageviews: Page Views
    defaults_version: 1
    listen: {}
    row: 75
    col: 12
    width: 12
    height: 7
  - title: Reach By Channel with Last Year (Last 90 Days)
    name: Reach By Channel with Last Year (Last 90 Days)
    model: aj_master
    explore: reach_aggregate_bydate_lastp
    type: looker_line
    fields: [reach_aggregate_bydate_lastp.date_date, reach_aggregate_bydate_lastp.fb_views,
      reach_aggregate_bydate_lastp.pageviews, reach_aggregate_bydate_lastp.yt_views,
      reach_aggregate_bydate_yearago.fb_views, reach_aggregate_bydate_yearago.pageviews,
      reach_aggregate_bydate_yearago.yt_views]
    fill_fields: [reach_aggregate_bydate_lastp.date_date]
    filters:
      reach_aggregate_bydate_lastp.date_date: after 2022/06/01
    sorts: [reach_aggregate_bydate_lastp.date_date desc]
    limit: 500
    query_timezone: UTC
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: reach_aggregate_bydate_lastp.fb_views
        forecast_n: 30
        forecast_interval: day
      - confidence_interval: 0.95
        field_name: reach_aggregate_bydate_lastp.pageviews
        forecast_n: 30
        forecast_interval: day
      - confidence_interval: 0.95
        field_name: reach_aggregate_bydate_lastp.yt_views
        forecast_n: 30
        forecast_interval: day
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: reach_aggregate_bydate_lastp.fb_views,
            id: reach_aggregate_bydate_lastp.fb_views, name: Facebook}, {axisId: reach_aggregate_bydate_lastp.pageviews,
            id: reach_aggregate_bydate_lastp.pageviews, name: Pageviews}, {axisId: reach_aggregate_bydate_lastp.yt_views,
            id: reach_aggregate_bydate_lastp.yt_views, name: Youtube}, {axisId: reach_aggregate_bydate_yearago.fb_views,
            id: reach_aggregate_bydate_yearago.fb_views, name: Facebook(Last Year)},
          {axisId: reach_aggregate_bydate_yearago.pageviews, id: reach_aggregate_bydate_yearago.pageviews,
            name: Pageviews(Last Year)}, {axisId: reach_aggregate_bydate_yearago.yt_views,
            id: reach_aggregate_bydate_yearago.yt_views, name: Youtube(Last Year)}],
        showLabels: true, showValues: true, valueFormat: '[<999950000]0.0,, "M";0.0,,,
          "B"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      reach_aggregate_bydate_lastp.yt_views: "#b1e5f6"
      reach_aggregate_bydate_lastp.fb_views: "#fa8da8"
      reach_aggregate_bydate_lastp.pageviews: "#b3eec2"
      reach_aggregate_bydate_yearago.yt_views: "#80bfd6"
      reach_aggregate_bydate_yearago.fb_views: "#f3c2cd"
      reach_aggregate_bydate_yearago.pageviews: "#88e093"
    series_labels:
      reach_aggregate_bydate_lastp.fb_views: Facebook
      reach_aggregate_bydate_lastp.pageviews: Pageviews
      reach_aggregate_bydate_lastp.yt_views: Youtube
      reach_aggregate_bydate_yearago.fb_views: Facebook(Last Year)
      reach_aggregate_bydate_yearago.pageviews: Pageviews(Last Year)
      reach_aggregate_bydate_yearago.yt_views: Youtube(Last Year)
    defaults_version: 1
    hidden_fields:
    hidden_series: []
    listen: {}
    row: 63
    col: 0
    width: 24
    height: 6
  - title: Reach by Channel (Previous 90 Days)
    name: Reach by Channel (Previous 90 Days)
    model: aj_master
    explore: reach_aggregate_bydate_lastpx
    type: looker_line
    fields: [reach_aggregate_bydate_lastpx.date_date, reach_aggregate_bydate_lastpx.yt_views,
      reach_aggregate_bydate_lastpx.fb_views, reach_aggregate_bydate_lastpx.pageviews]
    fill_fields: [reach_aggregate_bydate_lastpx.date_date]
    sorts: [reach_aggregate_bydate_lastpx.date_date desc]
    limit: 500
    query_timezone: UTC
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: reach_aggregate_bydate_lastpx.fb_views
        forecast_n: 30
        forecast_interval: day
      - confidence_interval: 0.95
        field_name: reach_aggregate_bydate_lastpx.pageviews
        forecast_n: 30
        forecast_interval: day
      - confidence_interval: 0.95
        field_name: reach_aggregate_bydate_lastpx.yt_views
        forecast_n: 30
        forecast_interval: day
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: reach_aggregate_bydate_lastpx.yt_views,
            id: reach_aggregate_bydate_lastpx.yt_views, name: Youtube}, {axisId: reach_aggregate_bydate_lastpx.fb_views,
            id: reach_aggregate_bydate_lastpx.fb_views, name: Facebook}, {axisId: reach_aggregate_bydate_lastpx.pageviews,
            id: reach_aggregate_bydate_lastpx.pageviews, name: Pageviews}], showLabels: true,
        showValues: true, valueFormat: '[<999950000]0.0,, "M";0.0,,, "B"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      reach_aggregate_bydate_lastpx.fb_views: "#fa8da8"
      reach_aggregate_bydate_lastpx.yt_views: "#80bfd6"
      reach_aggregate_bydate_lastpx.pageviews: "#88e093"
    series_labels:
      reach_aggregate_bydate_lastpx.yt_views: Youtube
      reach_aggregate_bydate_lastpx.pageviews: Pageviews
      reach_aggregate_bydate_lastpx.fb_views: Facebook
    defaults_version: 1
    listen: {}
    row: 69
    col: 0
    width: 24
    height: 6
  - title: Facebook Reach by Property (last 180 days)
    name: Facebook Reach by Property (last 180 days)
    model: aj_master
    explore: reach_aggregate_lastpx
    type: looker_line
    fields: [reach_aggregate_lastpx.alias, reach_aggregate_lastpx.date_date, reach_aggregate_lastpx.fb_views]
    pivots: [reach_aggregate_lastpx.alias]
    fill_fields: [reach_aggregate_lastpx.date_date]
    sorts: [reach_aggregate_lastpx.alias, reach_aggregate_lastpx.date_date desc]
    limit: 500
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: reach_aggregate_lastpx.fb_views
        forecast_n: 30
        forecast_interval: day
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: reach_aggregate_lastpx.fb_views,
            id: AJ America - reach_aggregate_lastpx.fb_views, name: AJ America}, {
            axisId: reach_aggregate_lastpx.fb_views, id: AJ Arabic - reach_aggregate_lastpx.fb_views,
            name: AJ Arabic}, {axisId: reach_aggregate_lastpx.fb_views, id: AJ Balkans
              - reach_aggregate_lastpx.fb_views, name: AJ Balkans}, {axisId: reach_aggregate_lastpx.fb_views,
            id: AJ Chinese - reach_aggregate_lastpx.fb_views, name: AJ Chinese}, {
            axisId: reach_aggregate_lastpx.fb_views, id: AJ Documentary - reach_aggregate_lastpx.fb_views,
            name: AJ Documentary}, {axisId: reach_aggregate_lastpx.fb_views, id: AJ
              English - reach_aggregate_lastpx.fb_views, name: AJ English}, {axisId: reach_aggregate_lastpx.fb_views,
            id: AJ Mubasher - reach_aggregate_lastpx.fb_views, name: AJ Mubasher},
          {axisId: reach_aggregate_lastpx.fb_views, id: AJ Turk - reach_aggregate_lastpx.fb_views,
            name: AJ Turk}, {axisId: reach_aggregate_lastpx.fb_views, id: AJ+ Arabi
              - reach_aggregate_lastpx.fb_views, name: AJ+ Arabi}, {axisId: reach_aggregate_lastpx.fb_views,
            id: AJ+ English - reach_aggregate_lastpx.fb_views, name: AJ+ English},
          {axisId: reach_aggregate_lastpx.fb_views, id: AJ+ Español - reach_aggregate_lastpx.fb_views,
            name: AJ+ Español}, {axisId: reach_aggregate_lastpx.fb_views, id: AJ+
              Français - reach_aggregate_lastpx.fb_views, name: AJ+ Français}, {axisId: reach_aggregate_lastpx.fb_views,
            id: Jetty - reach_aggregate_lastpx.fb_views, name: Jetty}, {axisId: reach_aggregate_lastpx.fb_views,
            id: Sadeem - reach_aggregate_lastpx.fb_views, name: Sadeem}], showLabels: false,
        showValues: true, valueFormat: '[<999950000]0.0,, "M";0.0,,, "B"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      AJ America - reach_aggregate_lastpx.fb_views: "#FCBF00"
      AJ Arabic - reach_aggregate_lastpx.fb_views: "#FC9200"
      AJ Balkans - reach_aggregate_lastpx.fb_views: "#FC2E31"
      AJ Chinese - reach_aggregate_lastpx.fb_views: "#fa2f90"
      AJ Documentary - reach_aggregate_lastpx.fb_views: "#A918B4"
      AJ English - reach_aggregate_lastpx.fb_views: "#6F38BB"
      AJ Mubasher - reach_aggregate_lastpx.fb_views: "#3D52B9"
      AJ Turk - reach_aggregate_lastpx.fb_views: "#2B99F7"
      AJ+ Arabi - reach_aggregate_lastpx.fb_views: "#24BED5"
      AJ+ English - reach_aggregate_lastpx.fb_views: "#149888"
      AJ+ Español - reach_aggregate_lastpx.fb_views: "#08B248"
      AJ+ Français - reach_aggregate_lastpx.fb_views: "#C9DC10"
      Jetty - reach_aggregate_lastpx.fb_views: "#fdd966"
      Sadeem - reach_aggregate_lastpx.fb_views: "#fdbe66"
    defaults_version: 1
    listen:
      Property: reach_aggregate_lastpx.alias
    row: 95
    col: 0
    width: 24
    height: 7
  - title: Page Reach by Property (last 180 days)
    name: Page Reach by Property (last 180 days)
    model: aj_master
    explore: reach_aggregate_lastpx
    type: looker_line
    fields: [reach_aggregate_lastpx.alias, reach_aggregate_lastpx.date_date, reach_aggregate_lastpx.pageviews]
    pivots: [reach_aggregate_lastpx.alias]
    fill_fields: [reach_aggregate_lastpx.date_date]
    sorts: [reach_aggregate_lastpx.alias, reach_aggregate_lastpx.date_date desc]
    limit: 500
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: reach_aggregate_lastpx.pageviews
        forecast_n: 30
        forecast_interval: day
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: reach_aggregate_lastpx.total_views,
            id: AJ Arabic - reach_aggregate_lastpx.total_views, name: AJ Arabic},
          {axisId: reach_aggregate_lastpx.total_views, id: AJ Balkans - reach_aggregate_lastpx.total_views,
            name: AJ Balkans}, {axisId: reach_aggregate_lastpx.total_views, id: AJ
              Documentary - reach_aggregate_lastpx.total_views, name: AJ Documentary},
          {axisId: reach_aggregate_lastpx.total_views, id: AJ English - reach_aggregate_lastpx.total_views,
            name: AJ English}, {axisId: reach_aggregate_lastpx.total_views, id: AJ
              Mubasher - reach_aggregate_lastpx.total_views, name: AJ Mubasher}, {
            axisId: reach_aggregate_lastpx.total_views, id: AJ+ Arabi - reach_aggregate_lastpx.total_views,
            name: AJ+ Arabi}, {axisId: reach_aggregate_lastpx.total_views, id: AJ+
              English - reach_aggregate_lastpx.total_views, name: AJ+ English}, {
            axisId: reach_aggregate_lastpx.total_views, id: AJ+ Español - reach_aggregate_lastpx.total_views,
            name: AJ+ Español}, {axisId: reach_aggregate_lastpx.total_views, id: AJ+
              Français - reach_aggregate_lastpx.total_views, name: AJ+ Français}],
        showLabels: false, showValues: true, valueFormat: '[<999950000]0.0,, "M";0.0,,,
          "B"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      AJ Arabic - reach_aggregate_lastpx.total_views: "#FCBF00"
      AJ Balkans - reach_aggregate_lastpx.total_views: "#FC9200"
      AJ Documentary - reach_aggregate_lastpx.total_views: "#FC2E31"
      AJ English - reach_aggregate_lastpx.total_views: "#fa2f90"
      AJ Mubasher - reach_aggregate_lastpx.total_views: "#A918B4"
      AJ+ Arabi - reach_aggregate_lastpx.total_views: "#6F38BB"
      AJ+ English - reach_aggregate_lastpx.total_views: "#3D52B9"
      AJ+ Español - reach_aggregate_lastpx.total_views: "#2B99F7"
      AJ+ Français - reach_aggregate_lastpx.total_views: "#24BED5"
      AJ America - reach_aggregate_lastpx.pageviews: "#FCBF00"
      AJ Arabic - reach_aggregate_lastpx.pageviews: "#FC9200"
      AJ Balkans - reach_aggregate_lastpx.pageviews: "#FC2E31"
      AJ Chinese - reach_aggregate_lastpx.pageviews: "#fa2f90"
      AJ Documentary - reach_aggregate_lastpx.pageviews: "#A918B4"
      AJ English - reach_aggregate_lastpx.pageviews: "#6F38BB"
      AJ Mubasher - reach_aggregate_lastpx.pageviews: "#3D52B9"
      AJ Turk - reach_aggregate_lastpx.pageviews: "#2B99F7"
      AJ+ Arabi - reach_aggregate_lastpx.pageviews: "#24BED5"
      AJ+ English - reach_aggregate_lastpx.pageviews: "#149888"
      AJ+ Español - reach_aggregate_lastpx.pageviews: "#08B248"
      AJ+ Français - reach_aggregate_lastpx.pageviews: "#C9DC10"
      Jetty - reach_aggregate_lastpx.pageviews: "#fdd966"
      Sadeem - reach_aggregate_lastpx.pageviews: "#fdbe66"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Property: reach_aggregate_lastpx.alias
    row: 109
    col: 0
    width: 24
    height: 6
  - title: Total Reach by Property (last 180 days)
    name: Total Reach by Property (last 180 days)
    model: aj_master
    explore: reach_aggregate_lastpx
    type: looker_line
    fields: [reach_aggregate_lastpx.alias, reach_aggregate_lastpx.date_date, reach_aggregate_lastpx.total_views]
    pivots: [reach_aggregate_lastpx.alias]
    fill_fields: [reach_aggregate_lastpx.date_date]
    sorts: [reach_aggregate_lastpx.alias, reach_aggregate_lastpx.date_date desc]
    limit: 500
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: reach_aggregate_lastpx.total_views
        forecast_n: 30
        forecast_interval: day
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: reach_aggregate_lastpx.total_views,
            id: AJ Arabic - reach_aggregate_lastpx.total_views, name: AJ Arabic},
          {axisId: reach_aggregate_lastpx.total_views, id: AJ Balkans - reach_aggregate_lastpx.total_views,
            name: AJ Balkans}, {axisId: reach_aggregate_lastpx.total_views, id: AJ
              Documentary - reach_aggregate_lastpx.total_views, name: AJ Documentary},
          {axisId: reach_aggregate_lastpx.total_views, id: AJ English - reach_aggregate_lastpx.total_views,
            name: AJ English}, {axisId: reach_aggregate_lastpx.total_views, id: AJ
              Mubasher - reach_aggregate_lastpx.total_views, name: AJ Mubasher}, {
            axisId: reach_aggregate_lastpx.total_views, id: AJ+ Arabi - reach_aggregate_lastpx.total_views,
            name: AJ+ Arabi}, {axisId: reach_aggregate_lastpx.total_views, id: AJ+
              English - reach_aggregate_lastpx.total_views, name: AJ+ English}, {
            axisId: reach_aggregate_lastpx.total_views, id: AJ+ Español - reach_aggregate_lastpx.total_views,
            name: AJ+ Español}, {axisId: reach_aggregate_lastpx.total_views, id: AJ+
              Français - reach_aggregate_lastpx.total_views, name: AJ+ Français}],
        showLabels: false, showValues: true, valueFormat: '[<999950000]0.0,, "M";0.0,,,
          "B"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      AJ Arabic - reach_aggregate_lastpx.total_views: "#FC9200"
      AJ Balkans - reach_aggregate_lastpx.total_views: "#FC2E31"
      AJ Documentary - reach_aggregate_lastpx.total_views: "#A918B4"
      AJ English - reach_aggregate_lastpx.total_views: "#6F38BB"
      AJ Mubasher - reach_aggregate_lastpx.total_views: "#3D52B9"
      AJ+ Arabi - reach_aggregate_lastpx.total_views: "#24BED5"
      AJ+ English - reach_aggregate_lastpx.total_views: "#149888"
      AJ+ Español - reach_aggregate_lastpx.total_views: "#08B248"
      AJ+ Français - reach_aggregate_lastpx.total_views: "#C9DC10"
      AJ America - reach_aggregate_lastpx.total_views: "#FCBF00"
      AJ Chinese - reach_aggregate_lastpx.total_views: "#fa2f90"
      AJ Turk - reach_aggregate_lastpx.total_views: "#2B99F7"
      Jetty - reach_aggregate_lastpx.total_views: "#fdd966"
      Sadeem - reach_aggregate_lastpx.total_views: "#fdbe66"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Property: reach_aggregate_lastpx.alias
    row: 89
    col: 0
    width: 24
    height: 6
  - title: YouTube Reach by Property (last 180 days)
    name: YouTube Reach by Property (last 180 days)
    model: aj_master
    explore: reach_aggregate_lastpx
    type: looker_line
    fields: [reach_aggregate_lastpx.alias, reach_aggregate_lastpx.date_date, reach_aggregate_lastpx.yt_views]
    pivots: [reach_aggregate_lastpx.alias]
    fill_fields: [reach_aggregate_lastpx.date_date]
    sorts: [reach_aggregate_lastpx.alias, reach_aggregate_lastpx.date_date desc]
    limit: 500
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: reach_aggregate_lastpx.yt_views
        forecast_n: 30
        forecast_interval: day
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: reach_aggregate_lastpx.fb_views,
            id: AJ America - reach_aggregate_lastpx.fb_views, name: AJ America}, {
            axisId: reach_aggregate_lastpx.fb_views, id: AJ Arabic - reach_aggregate_lastpx.fb_views,
            name: AJ Arabic}, {axisId: reach_aggregate_lastpx.fb_views, id: AJ Balkans
              - reach_aggregate_lastpx.fb_views, name: AJ Balkans}, {axisId: reach_aggregate_lastpx.fb_views,
            id: AJ Chinese - reach_aggregate_lastpx.fb_views, name: AJ Chinese}, {
            axisId: reach_aggregate_lastpx.fb_views, id: AJ Documentary - reach_aggregate_lastpx.fb_views,
            name: AJ Documentary}, {axisId: reach_aggregate_lastpx.fb_views, id: AJ
              English - reach_aggregate_lastpx.fb_views, name: AJ English}, {axisId: reach_aggregate_lastpx.fb_views,
            id: AJ Mubasher - reach_aggregate_lastpx.fb_views, name: AJ Mubasher},
          {axisId: reach_aggregate_lastpx.fb_views, id: AJ Turk - reach_aggregate_lastpx.fb_views,
            name: AJ Turk}, {axisId: reach_aggregate_lastpx.fb_views, id: AJ+ Arabi
              - reach_aggregate_lastpx.fb_views, name: AJ+ Arabi}, {axisId: reach_aggregate_lastpx.fb_views,
            id: AJ+ English - reach_aggregate_lastpx.fb_views, name: AJ+ English},
          {axisId: reach_aggregate_lastpx.fb_views, id: AJ+ Español - reach_aggregate_lastpx.fb_views,
            name: AJ+ Español}, {axisId: reach_aggregate_lastpx.fb_views, id: AJ+
              Français - reach_aggregate_lastpx.fb_views, name: AJ+ Français}, {axisId: reach_aggregate_lastpx.fb_views,
            id: Jetty - reach_aggregate_lastpx.fb_views, name: Jetty}, {axisId: reach_aggregate_lastpx.fb_views,
            id: Sadeem - reach_aggregate_lastpx.fb_views, name: Sadeem}], showLabels: false,
        showValues: true, valueFormat: '[<999950000]0.0,, "M";0.0,,, "B"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      AJ America - reach_aggregate_lastpx.fb_views: "#FCBF00"
      AJ Arabic - reach_aggregate_lastpx.fb_views: "#FC9200"
      AJ Balkans - reach_aggregate_lastpx.fb_views: "#FC2E31"
      AJ Chinese - reach_aggregate_lastpx.fb_views: "#fa2f90"
      AJ Documentary - reach_aggregate_lastpx.fb_views: "#A918B4"
      AJ English - reach_aggregate_lastpx.fb_views: "#6F38BB"
      AJ Mubasher - reach_aggregate_lastpx.fb_views: "#3D52B9"
      AJ Turk - reach_aggregate_lastpx.fb_views: "#2B99F7"
      AJ+ Arabi - reach_aggregate_lastpx.fb_views: "#24BED5"
      AJ+ English - reach_aggregate_lastpx.fb_views: "#149888"
      AJ+ Español - reach_aggregate_lastpx.fb_views: "#08B248"
      AJ+ Français - reach_aggregate_lastpx.fb_views: "#C9DC10"
      Jetty - reach_aggregate_lastpx.fb_views: "#fdd966"
      Sadeem - reach_aggregate_lastpx.fb_views: "#fdbe66"
      Sadeem - reach_aggregate_lastpx.yt_views: "#fdbe66"
      Jetty - reach_aggregate_lastpx.yt_views: "#fdd966"
      AJ+ Français - reach_aggregate_lastpx.yt_views: "#C9DC10"
      AJ+ Español - reach_aggregate_lastpx.yt_views: "#08B248"
      AJ+ English - reach_aggregate_lastpx.yt_views: "#149888"
      AJ+ Arabi - reach_aggregate_lastpx.yt_views: "#24BED5"
      AJ Turk - reach_aggregate_lastpx.yt_views: "#2B99F7"
      AJ Mubasher - reach_aggregate_lastpx.yt_views: "#3D52B9"
      AJ English - reach_aggregate_lastpx.yt_views: "#6F38BB"
      AJ Documentary - reach_aggregate_lastpx.yt_views: "#A918B4"
      AJ Chinese - reach_aggregate_lastpx.yt_views: "#fa2f90"
      AJ Balkans - reach_aggregate_lastpx.yt_views: "#FC2E31"
      AJ Arabic - reach_aggregate_lastpx.yt_views: "#FC9200"
      AJ America - reach_aggregate_lastpx.yt_views: "#FCBF00"
    defaults_version: 1
    listen:
      Property: reach_aggregate_lastpx.alias
    row: 102
    col: 0
    width: 24
    height: 7
  - title: Countries (excluding Facebook)
    name: Countries (excluding Facebook)
    model: aj_master
    explore: country_aggregate
    type: looker_google_map
    fields: [country_aggregate.country, country_aggregate.total_views]
    sorts: [country_aggregate.total_views desc 0]
    limit: 500
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: true
    heatmap_opacity: 0.6
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: metric_imperial
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    defaults_version: 0
    listen:
      Country: country_aggregate.country
    row: 40
    col: 0
    width: 13
    height: 8
  - title: 90 Day Total Reach Over Last 90 Days
    name: 90 Day Total Reach Over Last 90 Days
    model: aj_master
    explore: reach_aggregate_byperiod_history
    type: looker_area
    fields: [reach_aggregate_byperiod_history.total_views, reach_aggregate_byperiod_history.date_date]
    fill_fields: [reach_aggregate_byperiod_history.date_date]
    filters:
      reach_aggregate_byperiod_history.date_date: 90 days
    sorts: [reach_aggregate_byperiod_history.date_date desc]
    limit: 500
    query_timezone: UTC
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: reach_aggregate_byperiod_history.total_views
        forecast_n: 30
        forecast_interval: day
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: reach_aggregate_byperiod_history.total_views,
            id: reach_aggregate_byperiod_history.total_views, name: Total Views}],
        showLabels: false, showValues: true, valueFormat: '[<999950000]0.0,, "M";0.0,,,
          "B"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      reach_aggregate_byperiod_history.total_views: "#8ef9db"
    defaults_version: 1
    listen: {}
    row: 75
    col: 0
    width: 12
    height: 7
  - title: Reach by Channel (last t days)
    name: Reach by Channel (last t days)
    model: aj_master
    explore: reach_aggregate_bydate_lastyear
    type: looker_line
    fields: [reach_aggregate_bydate_lastyear.date_date, reach_aggregate_bydate_lastyear.yt_views,
      reach_aggregate_bydate_lastyear.fb_views, reach_aggregate_bydate_lastyear.pageviews,
      reach_aggregate_bydate_lastyear.total_views]
    sorts: [reach_aggregate_bydate_lastyear.date_date desc]
    limit: 500
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: reach_aggregate_bydate_lastyear.yt_views,
            id: reach_aggregate_bydate_lastyear.yt_views, name: Yt Views}, {axisId: reach_aggregate_bydate_lastyear.fb_views,
            id: reach_aggregate_bydate_lastyear.fb_views, name: Fb Views}, {axisId: reach_aggregate_bydate_lastyear.pageviews,
            id: reach_aggregate_bydate_lastyear.pageviews, name: Pageviews}, {axisId: reach_aggregate_bydate_lastyear.total_views,
            id: reach_aggregate_bydate_lastyear.total_views, name: Total Views}],
        showLabels: true, showValues: true, valueFormat: '[<999950000]0.0,, "M";0.0,,,
          "B"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      reach_aggregate_bydate_lastyear.yt_views: "#77c0e5"
      reach_aggregate_bydate_lastyear.fb_views: "#f9b8ca"
      reach_aggregate_bydate_lastyear.pageviews: "#808080"
      reach_aggregate_bydate_lastyear.total_views: "#8ef9db"
    defaults_version: 1
    listen:
      Date: reach_aggregate_bydate_lastyear.date_date
    row: 82
    col: 12
    width: 12
    height: 7
  - title: Reach Contribution by Property_v2
    name: Reach Contribution by Property_v2
    model: aj_master
    explore: reach_aggregate_lastyear
    type: looker_pie
    fields: [reach_aggregate_lastyear.alias, reach_aggregate_lastyear.total_views_]
    sorts: [reach_aggregate_lastyear.total_views_ desc 0]
    limit: 500
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Date: reach_aggregate_lastyear.date_date
    row: 16
    col: 13
    width: 11
    height: 8
  - title: Properties_v2
    name: Properties_v2
    model: aj_master
    explore: reach_aggregate_lastyear
    type: looker_grid
    fields: [reach_aggregate_lastyear.alias, reach_aggregate_lastyear.total_views_]
    sorts: [reach_aggregate_lastyear.total_views_ desc 0]
    limit: 500
    dynamic_fields: [{category: table_calculation, label: "% of Total Reach", value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_of_column_sum, table_calculation: of_total_reach,
        args: [reach_aggregate_lastyear.total_views_], _kind_hint: measure, _type_hint: number,
        id: CjIMji7xYR}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [of_total_reach, reach_aggregate_lastyear.alias]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      reach_aggregate_lastyear.alias: Property
    series_value_format:
      of_total_reach:
        name: percent_2
        decimals: '2'
        format_string: "#,##0.00%"
        label: Percent (2)
        label_prefix: Percent
    hidden_fields: [reach_aggregate_lastyear.total_views_]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Date: reach_aggregate_lastyear.date_date
    row: 24
    col: 0
    width: 13
    height: 8
  - title: Reach Details by Property v2
    name: Reach Details by Property v2
    model: aj_master
    explore: reach_aggregate_lastyear
    type: looker_grid
    fields: [reach_aggregate_lastyear.alias, reach_aggregate_lastyear.total_reach,
      reach_aggregate_lastyear.fb_percent, reach_aggregate_lastyear.yt_percent, reach_aggregate_lastyear.pv_percent]
    sorts: [reach_aggregate_lastyear.total_reach desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      reach_aggregate_lastyear.alias: Property
      reach_aggregate_lastyear.total_reach: "% Total Reach"
      reach_aggregate_lastyear.fb_percent: "% from Facebook"
      reach_aggregate_lastyear.yt_percent: "% from Youtube"
      reach_aggregate_lastyear.pv_percent: "% from Pageviews"
    series_cell_visualizations:
      reach_aggregate_lastyear.total_reach:
        is_active: false
    series_value_format:
      reach_aggregate_lastyear.total_reach: 0.00"%"
      reach_aggregate_lastyear.fb_percent:
        name: percent_2
        decimals: '2'
        format_string: "#,##0.00%"
        label: Percent (2)
        label_prefix: Percent
      reach_aggregate_lastyear.yt_percent:
        name: percent_2
        decimals: '2'
        format_string: "#,##0.00%"
        label: Percent (2)
        label_prefix: Percent
      reach_aggregate_lastyear.pv_percent:
        name: percent_2
        decimals: '2'
        format_string: "#,##0.00%"
        label: Percent (2)
        label_prefix: Percent
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 57
    col: 0
    width: 16
    height: 6
  - title: Reach Details by Property Tile v2
    name: Reach Details by Property Tile v2
    model: aj_master
    explore: reach_aggregate_byalias_change
    type: looker_grid
    fields: [reach_aggregate_byalias_change.alias, reach_aggregate_byalias_change.pop_change,
      reach_aggregate_byalias_change.yoy_change]
    sorts: [reach_aggregate_byalias_change.pop_change desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      reach_aggregate_byalias_change.alias: Property
      reach_aggregate_byalias_change.pop_change: "% 90 Day Change"
      reach_aggregate_byalias_change.yoy_change: "% Yearly Change"
    series_cell_visualizations:
      reach_aggregate_byalias_change.pop_change:
        is_active: false
    series_value_format:
      reach_aggregate_byalias_change.yoy_change: 0.00"%"
      reach_aggregate_byalias_change.pop_change: 0.00"%"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    row: 57
    col: 16
    width: 8
    height: 6
  filters:
  - name: Property
    title: Property
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: aj_master
    explore: reach_aggregate_lastp
    listens_to_filters: []
    field: reach_aggregate_lastp.alias
  - name: Date
    title: Date
    type: field_filter
    default_value: 180 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: aj_master
    explore: reach_aggregate_lastp
    listens_to_filters: []
    field: reach_aggregate_lastp.date_date
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: aj_master
    explore: country_aggregate
    listens_to_filters: []
    field: country_aggregate.country
  - name: Device Category
    title: Device Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: aj_master
    explore: device_aggregate
    listens_to_filters: []
    field: device_aggregate.device_category
