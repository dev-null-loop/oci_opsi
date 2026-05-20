output "id" {
  description = "OPSI Warehouse OCID"
  value       = oci_opsi_operations_insights_warehouse.this.id
}

output "state" {
  description = "Possible lifecycle states"
  value       = oci_opsi_operations_insights_warehouse.this.state
}

output "time_created" {
  description = "The time at which the resource was first created. An RFC3339 formatted datetime string"
  value       = oci_opsi_operations_insights_warehouse.this.time_created
}

output "time_updated" {
  description = "The time at which the resource was last updated. An RFC3339 formatted datetime string"
  value       = oci_opsi_operations_insights_warehouse.this.time_updated
}

output "time_last_wallet_rotated" {
  description = "The time at which the ADW wallet was last rotated for the Ops Insights Warehouse. An RFC3339 formatted datetime string"
  value       = oci_opsi_operations_insights_warehouse.this.time_last_wallet_rotated
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_opsi_operations_insights_warehouse.this.lifecycle_details
}

output "dynamic_group_id" {
  description = "OCID of the dynamic group created for the warehouse"
  value       = oci_opsi_operations_insights_warehouse.this.dynamic_group_id
}

output "operations_insights_tenancy_id" {
  description = "Tenancy Identifier of Ops Insights service"
  value       = oci_opsi_operations_insights_warehouse.this.operations_insights_tenancy_id
}
