output "id" {
  description = "Hub User OCID"
  value       = oci_opsi_operations_insights_warehouse_user.this.id
}

output "state" {
  description = "Possible lifecycle states"
  value       = oci_opsi_operations_insights_warehouse_user.this.state
}

output "time_created" {
  description = "The time at which the resource was first created. An RFC3339 formatted datetime string"
  value       = oci_opsi_operations_insights_warehouse_user.this.time_created
}

output "time_updated" {
  description = "The time at which the resource was last updated. An RFC3339 formatted datetime string"
  value       = oci_opsi_operations_insights_warehouse_user.this.time_updated
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_opsi_operations_insights_warehouse_user.this.lifecycle_details
}
