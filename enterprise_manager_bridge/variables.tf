variable "compartment_id" {
  description = "(Required) (Updatable) Compartment identifier of the Enterprise Manager bridge"
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Description of Enterprise Manager Bridge"
  type        = string
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) User-friedly name of Enterprise Manager Bridge that does not have to be unique."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "object_storage_bucket_name" {
  description = "(Required) Object Storage Bucket Name"
  type        = string
}
