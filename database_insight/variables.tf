variable "compartment_id" {
  description = "(Required) (Updatable) Compartment Identifier of database"
  type        = string
}

variable "connection_credential_details" {
  description = <<-EOT
  (Required when entity_source=MACS_MANAGED_AUTONOMOUS_DATABASE | MACS_MANAGED_CLOUD_DATABASE | MACS_MANAGED_EXTERNAL_DATABASE) User credential details to connect to the database.
	* `credential_type` - (Required) CREDENTIALS_BY_SOURCE is supplied via the External Database Service. CREDENTIALS_BY_VAULT is supplied by secret service to connection PE_COMANAGED_DATABASE and ADB as well. CREDENTIALS_BY_IAM is used db-token to connect only for Autonomous Database.
	* `named_credential_id` - (Applicable when credential_type=CREDENTIALS_BY_NAMED_CREDS) The credential [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) stored in management agent.
	* `credential_type` - (Required) Credential type.
	* `password_secret_id` - (Applicable when credential_type=CREDENTIALS_BY_VAULT) The secret [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) mapping to the database credentials.
	* `role` - (Applicable when credential_type=CREDENTIALS_BY_VAULT) database user role.
	* `user_name` - (Applicable when credential_type=CREDENTIALS_BY_VAULT) database user name.
	* `wallet_secret_id` - (Applicable when credential_type=CREDENTIALS_BY_VAULT) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Secret where the database keystore contents are stored. This is used for TCPS support in BM/VM/ExaCS cases.
  EOT
  type = object({
    credential_type        = string
    credential_source_name = optional(string)
    named_credential_id    = optional(string)
    password_secret_id     = optional(string)
    role                   = optional(string)
    user_name              = optional(string)
    wallet_secret_id       = optional(string)
  })
  default = null
}

variable "connection_details" {
  description = <<-EOT
  (Required when entity_source=AUTONOMOUS_DATABASE | MACS_MANAGED_EXTERNAL_DATABASE | PE_COMANAGED_DATABASE) Connection details to connect to the database. HostName, protocol, and port should be specified.
	* `host_name` - (Required when entity_source=AUTONOMOUS_DATABASE | MACS_MANAGED_AUTONOMOUS_DATABASE | MACS_MANAGED_CLOUD_DATABASE | MACS_MANAGED_EXTERNAL_DATABASE) Name of the listener host that will be used to create the connect string to the database.
	* `hosts` - (Required when entity_source=PE_COMANAGED_DATABASE) List of hosts and port for private endpoint accessed database resource.
		* `host_ip` - (Applicable when entity_source=PE_COMANAGED_DATABASE) Host IP used for connection requests for Cloud DB resource.
		* `port` - (Applicable when entity_source=PE_COMANAGED_DATABASE) Listener port number used for connection requests for rivate endpoint accessed db resource.
	* `port` - (Required when entity_source=AUTONOMOUS_DATABASE | MACS_MANAGED_AUTONOMOUS_DATABASE | MACS_MANAGED_CLOUD_DATABASE | MACS_MANAGED_EXTERNAL_DATABASE) Listener port number used for connection requests.
	* `protocol` - (Required when entity_source=AUTONOMOUS_DATABASE | MACS_MANAGED_AUTONOMOUS_DATABASE | MACS_MANAGED_CLOUD_DATABASE | MACS_MANAGED_EXTERNAL_DATABASE | PE_COMANAGED_DATABASE) Protocol used for connection requests for private endpoint accssed database resource.
	* `service_name` - (Required when entity_source=AUTONOMOUS_DATABASE | MACS_MANAGED_AUTONOMOUS_DATABASE | MACS_MANAGED_CLOUD_DATABASE | MACS_MANAGED_EXTERNAL_DATABASE | PE_COMANAGED_DATABASE) Database service name used for connection requests.
  EOT
  type = object({
    host_name = optional(string)
    hosts = optional(list(object({
      host_ip = optional(string)
      port    = optional(number)
    })), [])
    port         = optional(number)
    protocol     = optional(string)
    service_name = optional(string)
  })
  default = null
}

variable "credential_details" {
  description = <<-EOT
  (Required when entity_source=AUTONOMOUS_DATABASE | PE_COMANAGED_DATABASE) User credential details to connect to the database.
	* `credential_source_name` - (Applicable when entity_source=EM_MANAGED_EXTERNAL_DATABASE) Credential source name that had been added in Management Agent wallet. This value is only required when credential set by CREDENTIALS_BY_SOURCE and is optional properties for the others.
	* `credential_type` - (Required) CREDENTIALS_BY_SOURCE is supplied via the External Database Service. CREDENTIALS_BY_VAULT is supplied by secret service to connection PE_COMANAGED_DATABASE and ADB as well. CREDENTIALS_BY_IAM is used db-token to connect only for Autonomous Database.
	* `named_credential_id` - (Applicable when credential_type=CREDENTIALS_BY_NAMED_CREDS) The credential [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) stored in the Management Agent to connect the Autonomous Database.
	* `password_secret_id` - (Applicable when credential_type=CREDENTIALS_BY_VAULT) The secret [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) mapping to the database credentials.
	* `role` - (Applicable when credential_type=CREDENTIALS_BY_VAULT) database user role.
	* `user_name` - (Applicable when credential_type=CREDENTIALS_BY_VAULT) database user name.
	* `wallet_secret_id` - (Applicable when credential_type=CREDENTIALS_BY_VAULT) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Secret where the database keystore contents are stored. This is used for TCPS support in BM/VM/ExaCS cases.
  EOT
  type = object({
    credential_source_name = optional(string)
    credential_type        = string
    named_credential_id    = optional(string)
    password_secret_id     = optional(string)
    role                   = optional(string)
    user_name              = optional(string)
    wallet_secret_id       = optional(string)
  })
  default = null
}

variable "database_connector_id" {
  description = "(Required when entity_source=EXTERNAL_MYSQL_DATABASE_SYSTEM) (Updatable) The DBM owned database connector [OCID](/iaas/database-management/doc/view-connector-details.html) mapping to the database credentials and connection details."
  type        = string
  default     = null
}

variable "database_id" {
  description = "(Required when entity_source=AUTONOMOUS_DATABASE | MACS_MANAGED_CLOUD_DATABASE | MACS_MANAGED_EXTERNAL_DATABASE | MDS_MYSQL_DATABASE_SYSTEM | PE_COMANAGED_DATABASE | EXTERNAL_MYSQL_DATABASE_SYSTEM) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the database."
  type        = string
  default     = null
}

variable "database_resource_type" {
  description = "(Required when entity_source=AUTONOMOUS_DATABASE | MACS_MANAGED_CLOUD_DATABASE | MACS_MANAGED_EXTERNAL_DATABASE | MDS_MYSQL_DATABASE_SYSTEM | PE_COMANAGED_DATABASE) Oracle Cloud Infrastructure database resource type"
  type        = string
  default     = null
}

variable "dbm_private_endpoint_id" {
  description = "(Applicable when entity_source=PE_COMANAGED_DATABASE) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Database Management private endpoint"
  type        = string
  default     = null
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

variable "system_tags" {
  description = "(Applicable when entity_source=AUTONOMOUS_DATABASE | MACS_MANAGED_AUTONOMOUS_DATABASE | MACS_MANAGED_CLOUD_DATABASE | PE_COMANAGED_DATABASE) System tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  type        = map(string)
  default     = null
}

variable "deployment_type" {
  description = "(Required when entity_source=MACS_MANAGED_CLOUD_DATABASE | PE_COMANAGED_DATABASE) Database Deployment Type (EXACS will be supported in the future)"
  type        = string
  default     = null
}

variable "enterprise_manager_bridge_id" {
  description = "(Required when entity_source=EM_MANAGED_EXTERNAL_DATABASE) OPSI Enterprise Manager Bridge OCID"
  type        = string
  default     = null
}

variable "enterprise_manager_entity_identifier" {
  description = "(Required when entity_source=EM_MANAGED_EXTERNAL_DATABASE) Enterprise Manager Entity Unique Identifier"
  type        = string
  default     = null
}

variable "enterprise_manager_identifier" {
  description = "(Required when entity_source=EM_MANAGED_EXTERNAL_DATABASE) Enterprise Manager Unique Identifier"
  type        = string
  default     = null
}

variable "entity_source" {
  description = "(Required) (Updatable) Source of the database entity."
  type        = string
}

variable "exadata_insight_id" {
  description = "(Applicable when entity_source=EM_MANAGED_EXTERNAL_DATABASE) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Exadata insight."
  type        = string
  default     = null
}

variable "is_advanced_features_enabled" {
  description = "(Required when entity_source=AUTONOMOUS_DATABASE) Flag is to identify if advanced features for autonomous database is enabled or not"
  type        = bool
  default     = null
}

variable "management_agent_id" {
  description = "(Required when entity_source=MACS_MANAGED_AUTONOMOUS_DATABASE | MACS_MANAGED_CLOUD_DATABASE | MACS_MANAGED_EXTERNAL_DATABASE) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Management Agent"
  type        = string
  default     = null
}

variable "opsi_private_endpoint_id" {
  description = "(Applicable when entity_source=AUTONOMOUS_DATABASE | PE_COMANAGED_DATABASE) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the OPSI private endpoint"
  type        = string
  default     = null
}

variable "service_name" {
  description = "(Required when entity_source=PE_COMANAGED_DATABASE) Database service name used for connection requests."
  type        = string
  default     = null
}

variable "status" {
  description = "(Optional) (Updatable) Status of the resource. Example: \"ENABLED\", \"DISABLED\". Resource can be either enabled or disabled by updating the value of status field to either \"ENABLED\" or \"DISABLED\""
  type        = string
  default     = null
}
