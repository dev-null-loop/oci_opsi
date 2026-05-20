variable "compartment_id" {
  description = "(Required) (Updatable) Compartment Identifier of host"
  type        = string
}

variable "compute_id" {
  description = "(Required when entity_source=MACS_MANAGED_CLOUD_HOST) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Compute Instance"
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "enterprise_manager_bridge_id" {
  description = "(Required when entity_source=EM_MANAGED_EXTERNAL_HOST) OPSI Enterprise Manager Bridge OCID"
  type        = string
  default     = null
}

variable "enterprise_manager_entity_identifier" {
  description = "(Required when entity_source=EM_MANAGED_EXTERNAL_HOST) Enterprise Manager Entity Unique Identifier"
  type        = string
  default     = null
}

variable "enterprise_manager_identifier" {
  description = "(Required when entity_source=EM_MANAGED_EXTERNAL_HOST) Enterprise Manager Unique Identifier"
  type        = string
  default     = null
}

variable "entity_source" {
  description = "(Required) (Updatable) Source of the host entity."
  type        = string
}

variable "exadata_insight_id" {
  description = "(Applicable when entity_source=EM_MANAGED_EXTERNAL_HOST) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Exadata insight."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "management_agent_id" {
  description = "(Required when entity_source=MACS_MANAGED_CLOUD_HOST | MACS_MANAGED_EXTERNAL_HOST) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Management Agent"
  type        = string
  default     = null
}

variable "status" {
  description = "(Optional) (Updatable) Status of the resource. Example: \"ENABLED\", \"DISABLED\". Resource can be either enabled or disabled by updating the value of status field to either \"ENABLED\" or \"DISABLED\""
  type        = string
  default     = null
}
