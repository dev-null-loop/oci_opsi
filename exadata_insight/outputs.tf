output "id" {
  description = "Exadata insight identifier"
  value       = oci_opsi_exadata_insight.this.id
}

output "state" {
  description = "The current state of the Exadata insight."
  value       = oci_opsi_exadata_insight.this.state
}

output "time_created" {
  description = "The time the the Exadata insight was first enabled. An RFC3339 formatted datetime string"
  value       = oci_opsi_exadata_insight.this.time_created
}

output "time_updated" {
  description = "The time the Exadata insight was updated. An RFC3339 formatted datetime string"
  value       = oci_opsi_exadata_insight.this.time_updated
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_opsi_exadata_insight.this.lifecycle_details
}

output "exadata_display_name" {
  description = "The user-friendly name for the Exadata system. The name does not have to be unique."
  value       = oci_opsi_exadata_insight.this.exadata_display_name
}

output "exadata_name" {
  description = "The Exadata system name. If the Exadata systems managed by Enterprise Manager, the name is unique amongst the Exadata systems managed by the same Enterprise Manager."
  value       = oci_opsi_exadata_insight.this.exadata_name
}

output "status_details" {
  description = "A message describing the status of the Exadata Resource. For example, it can be used to provide actionable information about the policies needed to access the Exadata Resource."
  value       = oci_opsi_exadata_insight.this.status_details
}
