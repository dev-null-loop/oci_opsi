variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "entity_source" {
  description = "(Required) Source of the chargeback plan."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "plan_custom_items" {
  description = <<-EOT
  (Required) (Updatable) List of chargeback plan customizations. At least one item is required.
	* `is_customizable` - (Optional) (Updatable) Indicates whether the chargeback plan customization item can be customized.
	* `name` - (Required) (Updatable) Name of chargeback plan customization item. Example items for Exadata Insights Chargeback are statistic, percentile, infrastructureCost, additionalServerCost etc.
	* `value` - (Required) (Updatable) Value of chargeback plan customization item.
  EOT
  type = list(object({
    name            = string
    value           = string
    is_customizable = optional(bool)
  }))
}

variable "plan_description" {
  description = "(Required) (Updatable) Description of OPSI Chargeback Plan."
  type        = string
}

variable "plan_name" {
  description = "(Required) (Updatable) Name for the OPSI Chargeback plan."
  type        = string
}

variable "plan_type" {
  description = "(Required) Chargeback Plan type of the chargeback entity. For an Exadata it can be WEIGHTED_ALLOCATION, EQUAL_ALLOCATION, UNUSED_ALLOCATION."
  type        = string
}
