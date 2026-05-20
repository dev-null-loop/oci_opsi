output "id" {
  description = "Database insight identifier"
  value       = oci_opsi_database_insight.this.id
}

output "state" {
  description = "The current state of the database."
  value       = oci_opsi_database_insight.this.state
}

output "time_created" {
  description = "The time the database insight was first enabled. An RFC3339 formatted datetime string"
  value       = oci_opsi_database_insight.this.time_created
}

output "time_updated" {
  description = "The time the database insight was updated. An RFC3339 formatted datetime string"
  value       = oci_opsi_database_insight.this.time_updated
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_opsi_database_insight.this.lifecycle_details
}

output "database_display_name" {
  description = "Display name of database"
  value       = oci_opsi_database_insight.this.database_display_name
}

output "database_name" {
  description = "Name of database"
  value       = oci_opsi_database_insight.this.database_name
}

output "database_type" {
  description = "Ops Insights internal representation of the database type."
  value       = oci_opsi_database_insight.this.database_type
}

output "database_version" {
  description = "The version of the database."
  value       = oci_opsi_database_insight.this.database_version
}
