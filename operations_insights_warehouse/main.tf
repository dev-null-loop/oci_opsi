resource "oci_opsi_operations_insights_warehouse" "this" {
  compartment_id           = var.compartment_id
  cpu_allocated            = var.cpu_allocated
  display_name             = var.display_name
  compute_model            = var.compute_model
  defined_tags             = var.defined_tags
  freeform_tags            = var.freeform_tags
  storage_allocated_in_gbs = var.storage_allocated_in_gbs
}
