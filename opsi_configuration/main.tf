resource "oci_opsi_opsi_configuration" "this" {
  opsi_config_type          = var.opsi_config_type
  compartment_id            = var.compartment_id
  config_item_custom_status = var.config_item_custom_status
  config_item_field         = var.config_item_field
  dynamic "config_items" {
    for_each = var.config_items
    iterator = ci
    content {
      config_item_type = ci.value.config_item_type
      name             = ci.value.name
      value            = ci.value.value
    }
  }
  config_items_applicable_context = var.config_items_applicable_context
  defined_tags                    = var.defined_tags
  description                     = var.description
  display_name                    = var.display_name
  freeform_tags                   = var.freeform_tags
  opsi_config_field               = var.opsi_config_field
  system_tags                     = var.system_tags
}
