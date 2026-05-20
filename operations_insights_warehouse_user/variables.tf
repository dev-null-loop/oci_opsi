variable "compartment_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment."
  type        = string
}

variable "connection_password" {
  description = "(Required) (Updatable) User provided connection password for the AWR Data,  Enterprise Manager Data and Ops Insights OPSI Hub."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "is_awr_data_access" {
  description = "(Required) (Updatable) Indicate whether user has access to AWR data."
  type        = bool
}

variable "is_em_data_access" {
  description = "(Optional) (Updatable) Indicate whether user has access to EM data."
  type        = bool
  default     = null
}

variable "is_opsi_data_access" {
  description = "(Optional) (Updatable) Indicate whether user has access to OPSI data."
  type        = bool
  default     = null
}

variable "name" {
  description = "(Required) Username for schema which would have access to AWR Data,  Enterprise Manager Data and Ops Insights OPSI Hub."
  type        = string
}

variable "operations_insights_warehouse_id" {
  description = "(Required) OPSI Warehouse OCID"
  type        = string
}
