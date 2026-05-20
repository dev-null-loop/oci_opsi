resource "oci_opsi_chargeback_plan" "this" {
  compartment_id   = var.compartment_id
  entity_source    = var.entity_source
  plan_name        = var.plan_name
  plan_type        = var.plan_type
  plan_description = var.plan_description
  dynamic "plan_custom_items" {
    for_each = var.plan_custom_items
    iterator = pci
    content {
      name            = pci.value.name
      value           = pci.value.value
      is_customizable = pci.value.is_customizable
    }
  }
  defined_tags  = var.defined_tags
  freeform_tags = var.freeform_tags
}
