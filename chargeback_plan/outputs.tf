output "id" {
  description = "[OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of OPSI Chargeback plan resource."
  value       = oci_opsi_chargeback_plan.this.id
}

output "state" {
  description = "Chargeback Plan lifecycle states"
  value       = oci_opsi_chargeback_plan.this.state
}

output "time_created" {
  description = "The date and time the chargeback plan was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_opsi_chargeback_plan.this.time_created
}

output "time_updated" {
  description = "The time chargeback plan was updated. An RFC3339 formatted datetime string"
  value       = oci_opsi_chargeback_plan.this.time_updated
}

output "plan_category" {
  description = "Chargeback Plan category of the chargeback entity. It can be OOB, or CUSTOM."
  value       = oci_opsi_chargeback_plan.this.plan_category
}

output "is_customizable" {
  description = "Indicates whether the chargeback plan can be customized."
  value       = oci_opsi_chargeback_plan.this.is_customizable
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_opsi_chargeback_plan.this.lifecycle_details
}
