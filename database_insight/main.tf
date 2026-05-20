resource "oci_opsi_database_insight" "this" {
  compartment_id = var.compartment_id
  entity_source  = var.entity_source
  dynamic "connection_credential_details" {
    for_each = var.connection_credential_details[*]
    iterator = ccd
    content {
      credential_type        = ccd.value.credential_type
      credential_source_name = ccd.value.credential_source_name
      named_credential_id    = ccd.value.named_credential_id
      password_secret_id     = ccd.value.password_secret_id
      role                   = ccd.value.role
      user_name              = ccd.value.user_name
    }
  }
  dynamic "connection_details" {
    for_each = var.connection_details[*]
    iterator = cd
    content {
      host_name = cd.value.host_name
      dynamic "hosts" {
        for_each = cd.value.hosts
        iterator = hs
        content {
          host_ip = hs.value.host_ip
          port    = hs.value.port
        }
      }
      port         = cd.value.port
      protocol     = cd.value.protocol
      service_name = cd.value.service_name
    }
  }
  dynamic "credential_details" {
    for_each = var.credential_details[*]
    iterator = cd
    content {
      credential_source_name = cd.value.credential_source_name
      credential_type        = cd.value.credential_type
      named_credential_id    = cd.value.named_credential_id
      password_secret_id     = cd.value.password_secret_id
      role                   = cd.value.role
      user_name              = cd.value.user_name
      wallet_secret_id       = cd.value.wallet_secret_id
    }
  }
  database_connector_id                = var.database_connector_id
  database_id                          = var.database_id
  database_resource_type               = var.database_resource_type
  dbm_private_endpoint_id              = var.dbm_private_endpoint_id
  defined_tags                         = var.defined_tags
  freeform_tags                        = var.freeform_tags
  system_tags                          = var.system_tags
  deployment_type                      = var.deployment_type
  enterprise_manager_bridge_id         = var.enterprise_manager_bridge_id
  enterprise_manager_entity_identifier = var.enterprise_manager_entity_identifier
  enterprise_manager_identifier        = var.enterprise_manager_identifier
  exadata_insight_id                   = var.exadata_insight_id
  is_advanced_features_enabled         = var.is_advanced_features_enabled
  management_agent_id                  = var.management_agent_id
  opsi_private_endpoint_id             = var.opsi_private_endpoint_id
  service_name                         = var.service_name
  status                               = var.status
}
