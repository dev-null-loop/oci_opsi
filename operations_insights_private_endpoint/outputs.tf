output "id" {
  description = "The OCID of the Private service accessed database."
  value       = oci_opsi_operations_insights_private_endpoint.this.id
}

output "state" {
  description = "The current state of the private endpoint."
  value       = oci_opsi_operations_insights_private_endpoint.this.state
}

output "time_created" {
  description = "The date and time the private endpoint was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_opsi_operations_insights_private_endpoint.this.time_created
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_opsi_operations_insights_private_endpoint.this.lifecycle_details
}

output "private_ip" {
  description = "The private IP addresses assigned to the private endpoint. All IP addresses will be concatenated if it is RAC DBs."
  value       = oci_opsi_operations_insights_private_endpoint.this.private_ip
}

output "private_endpoint_status_details" {
  description = "A message describing the status of the private endpoint connection of this resource. For example, it can be used to provide actionable information about the validity of the private endpoint connection."
  value       = oci_opsi_operations_insights_private_endpoint.this.private_endpoint_status_details
}
