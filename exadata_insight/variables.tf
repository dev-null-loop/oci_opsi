variable "compartment_id" {
  description = "(Required) (Updatable) Compartment Identifier of Exadata insight"
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "enterprise_manager_bridge_id" {
  description = "(Required) OPSI Enterprise Manager Bridge OCID"
  type        = string
  default     = null
}

variable "enterprise_manager_entity_identifier" {
  description = "(Required) Enterprise Manager Entity Unique Identifier"
  type        = string
  default     = null
}

variable "enterprise_manager_identifier" {
  description = "(Required) Enterprise Manager Unique Identifier"
  type        = string
  default     = null
}

variable "entity_source" {
  description = "(Required) (Updatable) Source of the Exadata system."
  type        = string
}

variable "exadata_infra_id" {
  description = "(Required when entity_source=MACS_MANAGED_CLOUD_EXADATA | PE_COMANAGED_EXADATA) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Exadata Infrastructure."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "is_auto_sync_enabled" {
  description = "(Applicable when entity_source=EM_MANAGED_EXTERNAL_EXADATA) (Updatable) Set to true to enable automatic enablement and disablement of related targets from Enterprise Manager. New resources (e.g. Database Insights) will be placed in the same compartment as the related Exadata Insight."
  type        = bool
  default     = null
}

variable "member_vm_cluster_details" {
  description = "(Applicable when entity_source=MACS_MANAGED_CLOUD_EXADATA | PE_COMANAGED_EXADATA)"
  type = list(object({
    compartment_id          = optional(string)
    dbm_private_endpoint_id = optional(string)
    member_autonomous_details = optional(list(object({
      compartment_id = optional(string)
      connection_credential_details = optional(object({
        credential_type        = string
        credential_source_name = optional(string)
        named_credential_id    = optional(string)
        password_secret_id     = optional(string)
        role                   = optional(string)
        user_name              = optional(string)
        wallet_secret_id       = optional(string)
      }))
      connection_details = optional(object({
        host_name    = optional(string)
        port         = optional(number)
        protocol     = optional(string)
        service_name = optional(string)
      }))
      credential_details = optional(object({
        credential_type        = string
        credential_source_name = optional(string)
        named_credential_id    = optional(string)
        password_secret_id     = optional(string)
        role                   = optional(string)
        user_name              = optional(string)
        wallet_secret_id       = optional(string)
      }))
      database_id                  = optional(string)
      database_resource_type       = optional(string)
      defined_tags                 = optional(map(string))
      deployment_type              = optional(string)
      freeform_tags                = optional(map(string))
      is_advanced_features_enabled = optional(bool)
      management_agent_id          = optional(string)
      opsi_private_endpoint_id     = optional(string)
      system_tags                  = optional(map(string))
    })), [])
    member_database_details = optional(list(object({
      compartment_id = optional(string)
      connection_credential_details = optional(object({
        credential_type        = string
        credential_source_name = optional(string)
        named_credential_id    = optional(string)
        password_secret_id     = optional(string)
        role                   = optional(string)
        user_name              = optional(string)
        wallet_secret_id       = optional(string)
      }))
      connection_details = optional(object({
        host_name = optional(string)
        hosts = optional(list(object({
          host_ip = optional(string)
          port    = optional(number)
        })), [])
        port         = optional(number)
        protocol     = optional(string)
        service_name = optional(string)
      }))
      credential_details = optional(object({
        credential_type        = string
        credential_source_name = optional(string)
        named_credential_id    = optional(string)
        password_secret_id     = optional(string)
        role                   = optional(string)
        user_name              = optional(string)
        wallet_secret_id       = optional(string)
      }))
      database_id              = optional(string)
      database_resource_type   = optional(string)
      dbm_private_endpoint_id  = optional(string)
      defined_tags             = optional(map(string))
      deployment_type          = optional(string)
      freeform_tags            = optional(map(string))
      management_agent_id      = optional(string)
      opsi_private_endpoint_id = optional(string)
      service_name             = optional(string)
      system_tags              = optional(map(string))
    })), [])
    opsi_private_endpoint_id = optional(string)
    vm_cluster_type          = optional(string)
    vmcluster_id             = optional(string)
  }))
  default = []
}

variable "status" {
  description = "(Optional) (Updatable) Status of the resource. Example: \"ENABLED\", \"DISABLED\". Resource can be either enabled or disabled by updating the value of status field to either \"ENABLED\" or \"DISABLED\""
  type        = string
  default     = null
}
