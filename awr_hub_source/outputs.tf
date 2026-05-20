output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Awr Hub source database."
  value       = oci_opsi_awr_hub_source.this.id
}

output "state" {
  description = "the current state of the source database"
  value       = oci_opsi_awr_hub_source.this.state
}

output "time_created" {
  description = "The time at which the resource was first created. An RFC3339 formatted datetime string"
  value       = oci_opsi_awr_hub_source.this.time_created
}

output "time_updated" {
  description = "The time at which the resource was last updated. An RFC3339 formatted datetime string"
  value       = oci_opsi_awr_hub_source.this.time_updated
}

output "source_mail_box_url" {
  description = "Opsi Mailbox URL based on the Awr Hub and Awr Hub source."
  value       = oci_opsi_awr_hub_source.this.source_mail_box_url
}

output "awr_hub_opsi_source_id" {
  description = "The shorted string of the Awr Hub source database identifier."
  value       = oci_opsi_awr_hub_source.this.awr_hub_opsi_source_id
}
