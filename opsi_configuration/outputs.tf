output "id" {
  description = "[OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of OPSI configuration resource."
  value       = oci_opsi_opsi_configuration.this.id
}

output "state" {
  description = "OPSI configuration resource lifecycle state."
  value       = oci_opsi_opsi_configuration.this.state
}

output "time_created" {
  description = "The time at which the resource was first created. An RFC3339 formatted datetime string"
  value       = oci_opsi_opsi_configuration.this.time_created
}

output "time_updated" {
  description = "The time at which the resource was last updated. An RFC3339 formatted datetime string"
  value       = oci_opsi_opsi_configuration.this.time_updated
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_opsi_opsi_configuration.this.lifecycle_details
}
