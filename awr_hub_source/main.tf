resource "oci_opsi_awr_hub_source" "this" {
  associated_opsi_id     = var.associated_opsi_id
  associated_resource_id = var.associated_resource_id
  awr_hub_id             = var.awr_hub_id
  compartment_id         = var.compartment_id
  defined_tags           = var.defined_tags
  freeform_tags          = var.freeform_tags
  name                   = var.name
  type                   = var.type
}
