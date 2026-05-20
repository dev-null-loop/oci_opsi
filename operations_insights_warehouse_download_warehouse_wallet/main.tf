resource "oci_opsi_operations_insights_warehouse_download_warehouse_wallet" "this" {
  operations_insights_warehouse_id              = var.operations_insights_warehouse_id
  operations_insights_warehouse_wallet_password = var.operations_insights_warehouse_wallet_password
}
