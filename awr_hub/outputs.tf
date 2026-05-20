output "id" {
  description = "AWR Hub OCID"
  value       = oci_opsi_awr_hub.this.id
}

output "state" {
  description = "Possible lifecycle states"
  value       = oci_opsi_awr_hub.this.state
}

output "time_created" {
  description = "The time at which the resource was first created. An RFC3339 formatted datetime string"
  value       = oci_opsi_awr_hub.this.time_created
}

output "time_updated" {
  description = "The time at which the resource was last updated. An RFC3339 formatted datetime string"
  value       = oci_opsi_awr_hub.this.time_updated
}

output "awr_mailbox_url" {
  description = "Mailbox URL required for AWR hub and AWR source setup."
  value       = oci_opsi_awr_hub.this.awr_mailbox_url
}

output "hub_dst_timezone_version" {
  description = "Dst Time Zone Version of the AWR Hub"
  value       = oci_opsi_awr_hub.this.hub_dst_timezone_version
}
