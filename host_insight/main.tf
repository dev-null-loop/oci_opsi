resource "oci_opsi_host_insight" "this" {
  compartment_id                       = var.compartment_id
  entity_source                        = var.entity_source
  compute_id                           = var.compute_id
  defined_tags                         = var.defined_tags
  enterprise_manager_bridge_id         = var.enterprise_manager_bridge_id
  enterprise_manager_entity_identifier = var.enterprise_manager_entity_identifier
  enterprise_manager_identifier        = var.enterprise_manager_identifier
  exadata_insight_id                   = var.exadata_insight_id
  freeform_tags                        = var.freeform_tags
  management_agent_id                  = var.management_agent_id
  status                               = var.status
}
