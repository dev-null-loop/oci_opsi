resource "oci_opsi_enterprise_manager_bridge" "this" {
  compartment_id             = var.compartment_id
  display_name               = var.display_name
  object_storage_bucket_name = var.object_storage_bucket_name
  defined_tags               = var.defined_tags
  description                = var.description
  freeform_tags              = var.freeform_tags
}
