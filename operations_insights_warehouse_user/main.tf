resource "oci_opsi_operations_insights_warehouse_user" "this" {
  compartment_id                   = var.compartment_id
  connection_password              = var.connection_password
  is_awr_data_access               = var.is_awr_data_access
  name                             = var.name
  operations_insights_warehouse_id = var.operations_insights_warehouse_id
  defined_tags                     = var.defined_tags
  freeform_tags                    = var.freeform_tags
  is_em_data_access                = var.is_em_data_access
  is_opsi_data_access              = var.is_opsi_data_access
}
