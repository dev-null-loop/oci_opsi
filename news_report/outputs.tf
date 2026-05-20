output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the news report resource."
  value       = oci_opsi_news_report.this.id
}

output "state" {
  description = "The current state of the news report."
  value       = oci_opsi_news_report.this.state
}

output "time_created" {
  description = "The time the the news report was first enabled. An RFC3339 formatted datetime string."
  value       = oci_opsi_news_report.this.time_created
}

output "time_updated" {
  description = "The time the news report was updated. An RFC3339 formatted datetime string."
  value       = oci_opsi_news_report.this.time_updated
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_opsi_news_report.this.lifecycle_details
}
