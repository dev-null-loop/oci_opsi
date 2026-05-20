variable "are_child_compartments_included" {
  description = "(Optional) (Updatable) A flag to consider the resources within a given compartment and all sub-compartments."
  type        = bool
  default     = null
}

variable "compartment_id" {
  description = "(Required) (Updatable) Compartment Identifier where the news report will be created."
  type        = string
}

variable "content_types" {
  description = <<-EOT
  (Required) (Updatable) Content types that the news report can handle.
	* `actionable_insights_resources` - (Optional) (Updatable) Supported resources for actionable insights content type.
	* `capacity_planning_resources` - (Optional) (Updatable) Supported resources for capacity planning content type.
	* `sql_insights_fleet_analysis_resources` - (Optional) (Updatable) Supported resources for SQL insights - fleet analysis content type.
	* `sql_insights_performance_degradation_resources` - (Optional) (Updatable) Supported resources for SQL insights - performance degradation content type.
	* `sql_insights_plan_changes_resources` - (Optional) (Updatable) Supported resources for SQL insights - plan changes content type.
	* `sql_insights_top_databases_resources` - (Optional) (Updatable) Supported resources for SQL insights - top databases content type.
	* `sql_insights_top_sql_by_insights_resources` - (Optional) (Updatable) Supported resources for SQL insights - top SQL by insights content type.
	* `sql_insights_top_sql_resources` - (Optional) (Updatable) Supported resources for SQL insights - top SQL content type.
  EOT
  type = object({
    actionable_insights_resources                  = optional(list(string), [])
    capacity_planning_resources                    = optional(list(string), [])
    sql_insights_fleet_analysis_resources          = optional(list(string), [])
    sql_insights_performance_degradation_resources = optional(list(string), [])
    sql_insights_plan_changes_resources            = optional(list(string), [])
    sql_insights_top_databases_resources           = optional(list(string), [])
    sql_insights_top_sql_by_insights_resources     = optional(list(string), [])
    sql_insights_top_sql_resources                 = optional(list(string), [])
  })
}

variable "day_of_week" {
  description = "(Optional) (Updatable) Day of the week in which the news report will be sent if the frequency is set to WEEKLY."
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Required) (Updatable) The description of the news report."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "locale" {
  description = "(Required) (Updatable) Language of the news report."
  type        = string
}

variable "match_rule" {
  description = "(Optional) (Updatable) Match rule used for tag filters."
  type        = string
  default     = null
}

variable "name" {
  description = "(Required) (Updatable) The news report name."
  type        = string
}

variable "news_frequency" {
  description = "(Required) (Updatable) News report frequency."
  type        = string
}

variable "ons_topic_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the ONS topic."
  type        = string
}

variable "status" {
  description = "(Optional) (Updatable) Defines if the news report will be enabled or disabled."
  type        = string
  default     = null
}

variable "tag_filters" {
  description = "(Optional) (Updatable) List of tag filters; each filter composed by a namespace, key, and value. Example for defined tags - '<TagNamespace>.<TagKey>=<TagValue>'. Example for freeform tags - '<TagKey>=<TagValue>'"
  type        = list(string)
  default     = []
}
