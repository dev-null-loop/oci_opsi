resource "oci_opsi_news_report" "this" {
  compartment_id = var.compartment_id
  content_types {
    actionable_insights_resources                  = var.content_types.actionable_insights_resources
    capacity_planning_resources                    = var.content_types.capacity_planning_resources
    sql_insights_fleet_analysis_resources          = var.content_types.sql_insights_fleet_analysis_resources
    sql_insights_performance_degradation_resources = var.content_types.sql_insights_performance_degradation_resources
    sql_insights_plan_changes_resources            = var.content_types.sql_insights_plan_changes_resources
    sql_insights_top_databases_resources           = var.content_types.sql_insights_top_databases_resources
    sql_insights_top_sql_by_insights_resources     = var.content_types.sql_insights_top_sql_by_insights_resources
    sql_insights_top_sql_resources                 = var.content_types.sql_insights_top_sql_resources
  }
  description                     = var.description
  locale                          = var.locale
  name                            = var.name
  news_frequency                  = var.news_frequency
  ons_topic_id                    = var.ons_topic_id
  are_child_compartments_included = var.are_child_compartments_included
  day_of_week                     = var.day_of_week
  defined_tags                    = var.defined_tags
  freeform_tags                   = var.freeform_tags
  match_rule                      = var.match_rule
  status                          = var.status
  tag_filters                     = var.tag_filters
}
