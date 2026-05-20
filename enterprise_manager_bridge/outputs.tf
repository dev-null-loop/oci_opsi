output "id" {
  description = "Enterprise Manager bridge identifier"
  value       = oci_opsi_enterprise_manager_bridge.this.id
}

output "state" {
  description = "The current state of the Enterprise Manager bridge."
  value       = oci_opsi_enterprise_manager_bridge.this.state
}

output "time_created" {
  description = "The time the the Enterprise Manager bridge was first created. An RFC3339 formatted datetime string"
  value       = oci_opsi_enterprise_manager_bridge.this.time_created
}

output "time_updated" {
  description = "The time the Enterprise Manager bridge was updated. An RFC3339 formatted datetime string"
  value       = oci_opsi_enterprise_manager_bridge.this.time_updated
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_opsi_enterprise_manager_bridge.this.lifecycle_details
}

output "object_storage_namespace_name" {
  description = "Object Storage Namespace Name"
  value       = oci_opsi_enterprise_manager_bridge.this.object_storage_namespace_name
}
