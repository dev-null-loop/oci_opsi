variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment."
  type        = string
}

variable "compute_model" {
  description = "(Optional) (Updatable) The compute model for the OPSI warehouse ADW (OCPU or ECPU)"
  type        = string
  default     = null
}

variable "cpu_allocated" {
  description = "(Required) (Updatable) Number of CPUs allocated to OPSI Warehouse ADW."
  type        = number
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) User-friedly name of Ops Insights Warehouse that does not have to be unique."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "storage_allocated_in_gbs" {
  description = "(Optional) (Updatable) Storage allocated to OPSI Warehouse ADW."
  type        = number
  default     = null
}
