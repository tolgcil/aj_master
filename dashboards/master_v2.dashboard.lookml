- dashboard: master_digital_reach
  title: Master Digital Reach
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 1 hour
  preferred_slug: OlqhXgcIcUfXDQledbOxtA
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
    limit: 5000
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
      reach_aggregate_byperiod_history.facebook_views: Facebook
      reach_aggregate_byperiod_history.youtube_views: Youtube
      reach_aggregate_byperiod_history.page_views: Pageviews
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
    note_state: collapsed
    note_display: below
    note_text: Tile unaffected by the date filter
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
    note_state: collapsed
    note_display: below
    note_text: Tile unaffected by the date filter
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
    dynamic_fields: [{category: table_calculation, label: Percent of Device Views,
        value_format: !!null '', value_format_name: percent_0, calculation_type: percent_of_column_sum,
        table_calculation: percent_of_device_views, args: [device_aggregate.total_views],
        _kind_hint: measure, _type_hint: number, id: ipnqHPPNff}]
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
      Date: device_aggregate.date_date
    row: 24
    col: 0
    width: 13
    height: 8
  - title: Devices (excluding Facebook)
    name: Devices (excluding Facebook) (2)
    model: aj_master
    explore: device_aggregate
    type: looker_grid
    fields: [device_aggregate.device_category, device_aggregate.total_views]
    sorts: [device_aggregate.total_views desc]
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
      Date: device_aggregate.date_date
    row: 24
    col: 13
    width: 11
    height: 8
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
      Date: country_aggregate.date_date
    row: 32
    col: 0
    width: 13
    height: 8
  - title: Reach Contribution by Property
    name: Reach Contribution by Property
    model: aj_master
    explore: reach_aggregate_lastyear
    type: looker_pie
    fields: [reach_aggregate_lastyear.alias, reach_aggregate_lastyear.total_views_]
    sorts: [reach_aggregate_lastyear.total_views_ desc 0]
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
      Property: reach_aggregate_lastyear.alias
    row: 16
    col: 0
    width: 13
    height: 8
  - title: Properties
    name: Properties
    model: aj_master
    explore: reach_aggregate_lastyear
    type: looker_grid
    fields: [reach_aggregate_lastyear.alias, reach_aggregate_lastyear.total_views_]
    sorts: [reach_aggregate_lastyear.total_views_ desc 0]
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
      Property: reach_aggregate_lastyear.alias
    row: 16
    col: 13
    width: 11
    height: 8
  - title: Reach Details by Property
    name: Reach Details by Property
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
    listen:
      Date: reach_aggregate_lastyear.date_date
      Property: reach_aggregate_lastyear.alias
    row: 40
    col: 0
    width: 16
    height: 8
  - title: Reach Details by Change
    name: Reach Details by Change
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
    note_state: collapsed
    note_display: hover
    note_text: Tile unaffected by the date filter
    listen:
      Property: reach_aggregate_byalias_change.alias
    row: 40
    col: 16
    width: 8
    height: 8
  - title: Reach by Property
    name: Reach by Property
    model: aj_master
    explore: reach_aggregate_lastyear
    type: looker_column
    fields: [reach_aggregate_lastyear.alias, reach_aggregate_lastyear.total_yt_views,
      reach_aggregate_lastyear.total_fb_views, reach_aggregate_lastyear.total_pageviews]
    sorts: [reach_aggregate_lastyear.total_yt_views desc 0]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: reach_aggregate_lastyear.total_yt_views,
            id: reach_aggregate_lastyear.total_yt_views, name: Total Yt Views}, {
            axisId: reach_aggregate_lastyear.total_fb_views, id: reach_aggregate_lastyear.total_fb_views,
            name: Total Fb Views}, {axisId: reach_aggregate_lastyear.total_pageviews,
            id: reach_aggregate_lastyear.total_pageviews, name: Total Pageviews}],
        showLabels: true, showValues: true, valueFormat: '[<999950000]0.0,, "M";0.0,,,
          "B"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      reach_aggregate_lastyear.total_yt_views: "#77c0e5"
      reach_aggregate_lastyear.total_fb_views: "#f9b8ca"
      reach_aggregate_lastyear.total_pageviews: "#808080"
    series_labels:
      reach_aggregate_lastyear.total_yt_views: Youtube
      reach_aggregate_lastyear.total_fb_views: Facebook
      reach_aggregate_lastyear.total_pageviews: Pageviews
    defaults_version: 1
    listen:
      Date: reach_aggregate_lastyear.date_date
      Property: reach_aggregate_lastyear.alias
    row: 55
    col: 0
    width: 24
    height: 6
  - title: Reach by Channel
    name: Reach by Channel
    model: aj_master
    explore: for_last_years
    type: looker_line
    fields: [for_last_years.date_date, for_last_years.fb_views, for_last_years.yt_views,
      for_last_years.pageviews, for_last_years.total_views, for_last_years.last_fb_views,
      for_last_years.last_yt_views, for_last_years.last_pageviews, for_last_years.last_total_views]
    fill_fields: [for_last_years.date_date]
    sorts: [for_last_years.date_date desc]
    limit: 5000
    analysis_config:
      forecasting:
      - field_name: for_last_years.fb_views
        forecast_n: 30
        forecast_interval: day
      - field_name: for_last_years.pageviews
        forecast_n: 30
        forecast_interval: day
      - field_name: for_last_years.total_views
        forecast_n: 30
        forecast_interval: day
      - field_name: for_last_years.yt_views
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
    y_axes: [{label: '', orientation: left, series: [{axisId: for_last_years.fb_views,
            id: for_last_years.fb_views, name: Facebook}, {axisId: for_last_years.yt_views,
            id: for_last_years.yt_views, name: Youtube}, {axisId: for_last_years.pageviews,
            id: for_last_years.pageviews, name: Pageviews}, {axisId: for_last_years.total_views,
            id: for_last_years.total_views, name: Total Views}], showLabels: false,
        showValues: true, valueFormat: '[<999950000]0.0,, "M";0.0,,, "B"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: for_last_years.last_yt_views, id: for_last_years.last_yt_views,
            name: Youtube (Last year)}, {axisId: for_last_years.last_pageviews, id: for_last_years.last_pageviews,
            name: Pageviews (Last year)}, {axisId: for_last_years.last_total_views,
            id: for_last_years.last_total_views, name: Total Views (Last year)}, {
            axisId: for_last_years.last_fb_views, id: for_last_years.last_fb_views,
            name: Facebook (Last year)}], showLabels: false, showValues: true, valueFormat: '[<999950000]0.0,,
          "M";0.0,,, "B"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_colors:
      for_last_years.fb_views: "#fa8da8"
      for_last_years.yt_views: "#b1e5f6"
      for_last_years.pageviews: "#b3eec2"
      for_last_years.last_fb_views: "#f3c2cd"
      for_last_years.total_views: "#808080"
      for_last_years.last_yt_views: "#80bfd6"
      for_last_years.last_pageviews: "#88e093"
      for_last_years.last_total_views: "#4f4f4f"
    series_labels:
      for_last_years.fb_views: Facebook
      for_last_years.yt_views: Youtube
      for_last_years.pageviews: Pageviews
      for_last_years.last_fb_views: Facebook (Last year)
      for_last_years.last_yt_views: Youtube (Last year)
      for_last_years.last_pageviews: Pageviews (Last year)
      for_last_years.last_total_views: Total Views (Last year)
    defaults_version: 1
    listen:
      Date: for_last_years.date_date
    row: 48
    col: 0
    width: 24
    height: 7
  - title: Top Countries (excluding Facebook)
    name: Top Countries (excluding Facebook)
    model: aj_master
    explore: country_aggregate
    type: looker_grid
    fields: [country_aggregate.country, country_aggregate.total_views]
    sorts: [percent_of_country_aggregate_total_views desc]
    limit: 20
    dynamic_fields: [{args: [country_aggregate.total_views], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: country_aggregate.total_views, label: Percent
          of Country Aggregate Total Views, source_field: country_aggregate.total_views,
        table_calculation: percent_of_country_aggregate_total_views, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number, id: RVx5TZlZpt}]
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
      country_aggregate.country: Country
      percent_of_country_aggregate_total_views: Total Percent
    series_cell_visualizations:
      percent_of_country_aggregate_total_views:
        is_active: true
    series_value_format:
      percent_of_country_aggregate_total_views:
        name: percent_1
        decimals: '1'
        format_string: "#,##0.0%"
        label: Percent (1)
        label_prefix: Percent
    hidden_fields: [country_aggregate.total_views]
    series_types: {}
    defaults_version: 1
    listen:
      Country: country_aggregate.country
      Date: country_aggregate.date_date
    row: 32
    col: 13
    width: 11
    height: 8
  - title: Reach by Property
    name: Reach by Property (2)
    model: aj_master
    explore: reach_aggregate_lastyear_unpivot_v2
    type: looker_line
    fields: [reach_aggregate_lastyear_unpivot_v2.date_date, reach_aggregate_lastyear_unpivot_v2.alias,
      reach_aggregate_lastyear_unpivot_v2.channel, reach_aggregate_lastyear_unpivot_v2.total_views]
    pivots: [reach_aggregate_lastyear_unpivot_v2.channel, reach_aggregate_lastyear_unpivot_v2.alias]
    fill_fields: [reach_aggregate_lastyear_unpivot_v2.date_date]
    sorts: [reach_aggregate_lastyear_unpivot_v2.date_date desc]
    limit: 5000
    analysis_config:
      forecasting:
      - field_name: reach_aggregate_lastyear_unpivot_v2.total_views
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
    show_null_points: false
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Facebook - AJ America - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Facebook - AJ America}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Facebook - AJ Arabic - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Facebook - AJ Arabic}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Facebook - AJ Balkans - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Facebook - AJ Balkans}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Facebook - AJ Chinese - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Facebook - AJ Chinese}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Facebook - AJ Documentary - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Facebook - AJ Documentary}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Facebook - AJ English - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Facebook - AJ English}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Facebook - AJ Mubasher - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Facebook - AJ Mubasher}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Facebook - AJ Turk - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Facebook - AJ Turk}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Facebook - AJ+ Arabi - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Facebook - AJ+ Arabi}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Facebook - AJ+ English - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Facebook - AJ+ English}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Facebook - AJ+ Español - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Facebook - AJ+ Español}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Facebook - AJ+ Français - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Facebook - AJ+ Français}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Facebook - Jetty - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Facebook - Jetty}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Facebook - Sadeem - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Facebook - Sadeem}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Total - AJ America - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Total - AJ America}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Total - AJ Arabic - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Total - AJ Arabic}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Total - AJ Balkans - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Total - AJ Balkans}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Total - AJ Chinese - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Total - AJ Chinese}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Total - AJ Documentary - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Total - AJ Documentary}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Total - AJ English - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Total - AJ English}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Total - AJ Mubasher - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Total - AJ Mubasher}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Total - AJ Turk - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Total - AJ Turk}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Total - AJ+ Arabi - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Total - AJ+ Arabi}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Total - AJ+ English - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Total - AJ+ English}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Total - AJ+ Español - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Total - AJ+ Español}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Total - AJ+ Français - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Total - AJ+ Français}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Total - Jetty - reach_aggregate_lastyear_unpivot_v2.total_views, name: Total
              - Jetty}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Total - Sadeem - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Total - Sadeem}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Website - AJ America - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Website - AJ America}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Website - AJ Arabic - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Website - AJ Arabic}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Website - AJ Balkans - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Website - AJ Balkans}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Website - AJ Chinese - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Website - AJ Chinese}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Website - AJ Documentary - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Website - AJ Documentary}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Website - AJ English - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Website - AJ English}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Website - AJ Mubasher - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Website - AJ Mubasher}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Website - AJ Turk - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Website - AJ Turk}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Website - AJ+ Arabi - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Website - AJ+ Arabi}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Website - AJ+ English - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Website - AJ+ English}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Website - AJ+ Español - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Website - AJ+ Español}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Website - AJ+ Français - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Website - AJ+ Français}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Website - Jetty - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Website - Jetty}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Website - Sadeem - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Website - Sadeem}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Youtube - AJ America - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Youtube - AJ America}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Youtube - AJ Arabic - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Youtube - AJ Arabic}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Youtube - AJ Balkans - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Youtube - AJ Balkans}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Youtube - AJ Chinese - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Youtube - AJ Chinese}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Youtube - AJ Documentary - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Youtube - AJ Documentary}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Youtube - AJ English - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Youtube - AJ English}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Youtube - AJ Mubasher - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Youtube - AJ Mubasher}, {axisId: reach_aggregate_lastyear_unpivot_v2.total_views,
            id: Youtube - AJ Turk - reach_aggregate_lastyear_unpivot_v2.total_views,
            name: Youtube - AJ Turk}], showLabels: false, showValues: true, valueFormat: '[<999950000]0.0,,
          "M";0.0,,, "B"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Channel: reach_aggregate_lastyear_unpivot_v2.channel
      Date: reach_aggregate_lastyear_unpivot_v2.date_date
      Property: reach_aggregate_lastyear_unpivot_v2.alias
    row: 61
    col: 0
    width: 24
    height: 6
  filters:
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
    explore: reach_aggregate_lastyear
    listens_to_filters: []
    field: reach_aggregate_lastyear.alias
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
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
  - name: Channel
    title: Channel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: aj_master
    explore: reach_aggregate_lastyear_unpivot_v2
    listens_to_filters: []
    field: reach_aggregate_lastyear_unpivot_v2.channel
