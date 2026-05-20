variable "compartment_id" {
  description = "(Required) (Updatable) The compartment [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Private service accessed database."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) The description of the private endpoint."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) The display name for the private endpoint. It is changeable."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "is_used_for_rac_dbs" {
  description = "(Required) This flag was previously used to create a private endpoint with scan proxy. Setting this to true will now create a private endpoint with a DNS proxy causing `isProxyEnabled` flag to be true; this is used exclusively for full feature support for dedicated Autonomous Databases."
  type        = bool
}

variable "nsg_ids" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the network security groups that the private endpoint belongs to."
  type        = set(string)
  default     = []
}

variable "subnet_id" {
  description = "(Required) The Subnet [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Private service accessed database."
  type        = string
}

variable "vcn_id" {
  description = "(Required) The VCN [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Private service accessed database."
  type        = string
}
