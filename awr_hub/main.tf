resource "oci_opsi_awr_hub" "this" {
  compartment_id                   = var.compartment_id
  display_name                     = var.display_name
  operations_insights_warehouse_id = var.operations_insights_warehouse_id
  defined_tags                     = var.defined_tags
  freeform_tags                    = var.freeform_tags
  object_storage_bucket_name       = var.object_storage_bucket_name
}
