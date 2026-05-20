variable "compartment_id" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment."
  type        = string
  default     = null
}

variable "config_item_custom_status" {
  description = "(Optional) Specifies whether only customized configuration items or only non-customized configuration items or both have to be returned. By default only customized configuration items are returned."
  type        = list(string)
  default     = []
}

variable "config_item_field" {
  description = "(Optional) Specifies the fields to return in a config item summary."
  type        = list(string)
  default     = []
}

variable "config_items" {
  description = <<-EOT
  (Optional) (Updatable) Array of configuration items with custom values. All and only configuration items requiring custom values should be part of this array.
	* `config_item_type` - (Required) (Updatable) Type of configuration item.
	* `name` - (Optional) (Updatable) Name of configuration item.
	* `value` - (Optional) (Updatable) Value of configuration item.
  EOT
  type = list(object({
    config_item_type = string
    name             = optional(string)
    value            = optional(string)
  }))
  default = []
}

variable "config_items_applicable_context" {
  description = "(Optional) Returns the configuration items filtered by applicable contexts sent in this param. By default configuration items of all applicable contexts are returned."
  type        = list(string)
  default     = []
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Description of OPSI configuration."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) User-friendly display name for the OPSI configuration. The name does not have to be unique."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "opsi_config_field" {
  description = "(Optional) Optional fields to return as part of OpsiConfiguration object. Unless requested, these fields will not be returned by default."
  type        = list(string)
  default     = []
}

variable "opsi_config_type" {
  description = "(Required) (Updatable) OPSI configuration type."
  type        = string
}

variable "system_tags" {
  description = "(Optional) (Updatable) System tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  type        = map(string)
  default     = null
}
