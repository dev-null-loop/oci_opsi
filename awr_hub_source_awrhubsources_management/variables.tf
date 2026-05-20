variable "awr_hub_source_id" {
  description = "(Required) Unique Awr Hub Source identifier"
  type        = string
}

variable "enable_awrhubsource" {
  description = "(Required) (Updatable) A required field when set to `true` calls enable action and when set to `false` calls disable action."
  type        = bool
}
