resource "oci_opsi_operations_insights_private_endpoint" "this" {
  compartment_id      = var.compartment_id
  display_name        = var.display_name
  is_used_for_rac_dbs = var.is_used_for_rac_dbs
  subnet_id           = var.subnet_id
  vcn_id              = var.vcn_id
  defined_tags        = var.defined_tags
  description         = var.description
  freeform_tags       = var.freeform_tags
  nsg_ids             = var.nsg_ids
}
