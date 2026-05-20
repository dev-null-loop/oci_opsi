output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the host insight resource."
  value       = oci_opsi_host_insight.this.id
}

output "state" {
  description = "The current state of the host."
  value       = oci_opsi_host_insight.this.state
}

output "time_created" {
  description = "The time the the host insight was first enabled. An RFC3339 formatted datetime string"
  value       = oci_opsi_host_insight.this.time_created
}

output "time_updated" {
  description = "The time the host insight was updated. An RFC3339 formatted datetime string"
  value       = oci_opsi_host_insight.this.time_updated
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_opsi_host_insight.this.lifecycle_details
}

output "host_display_name" {
  description = "The user-friendly name for the host. The name does not have to be unique."
  value       = oci_opsi_host_insight.this.host_display_name
}

output "host_name" {
  description = "The host name. The host name is unique amongst the hosts managed by the same management agent."
  value       = oci_opsi_host_insight.this.host_name
}
