resource "oci_opsi_exadata_insight" "this" {
  compartment_id                       = var.compartment_id
  entity_source                        = var.entity_source
  defined_tags                         = var.defined_tags
  enterprise_manager_bridge_id         = var.enterprise_manager_bridge_id
  enterprise_manager_entity_identifier = var.enterprise_manager_entity_identifier
  enterprise_manager_identifier        = var.enterprise_manager_identifier
  exadata_infra_id                     = var.exadata_infra_id
  freeform_tags                        = var.freeform_tags
  status                               = var.status
  is_auto_sync_enabled                 = var.is_auto_sync_enabled
  dynamic "member_vm_cluster_details" {
    for_each = var.member_vm_cluster_details
    iterator = mvcd
    content {
      compartment_id          = mvcd.value.compartment_id
      dbm_private_endpoint_id = mvcd.value.dbm_private_endpoint_id
      dynamic "member_autonomous_details" {
        for_each = mvcd.value.member_autonomous_details
        iterator = mad
        content {
          compartment_id = mad.value.compartment_id
          dynamic "connection_credential_details" {
            for_each = mad.value.connection_credential_details[*]
            iterator = ccd
            content {
              credential_type        = ccd.value.credential_type
              credential_source_name = ccd.value.credential_source_name
              named_credential_id    = ccd.value.named_credential_id
              password_secret_id     = ccd.value.password_secret_id
              role                   = ccd.value.role
              user_name              = ccd.value.user_name
              wallet_secret_id       = ccd.value.wallet_secret_id
            }
          }
          dynamic "connection_details" {
            for_each = mad.value.connection_details[*]
            iterator = cd
            content {
              host_name    = cd.value.host_name
              port         = cd.value.port
              protocol     = cd.value.protocol
              service_name = cd.value.service_name
            }
          }
          dynamic "credential_details" {
            for_each = mad.value.credential_details[*]
            iterator = cd
            content {
              credential_type        = cd.value.credential_type
              credential_source_name = cd.value.credential_source_name
              named_credential_id    = cd.value.named_credential_id
              password_secret_id     = cd.value.password_secret_id
              role                   = cd.value.role
              user_name              = cd.value.user_name
              wallet_secret_id       = cd.value.wallet_secret_id
            }
          }
          database_id                  = mad.value.database_id
          database_resource_type       = mad.value.database_resource_type
          defined_tags                 = mad.value.defined_tags
          deployment_type              = mad.value.deployment_type
          freeform_tags                = mad.value.freeform_tags
          is_advanced_features_enabled = mad.value.is_advanced_features_enabled
          management_agent_id          = mad.value.management_agent_id
          opsi_private_endpoint_id     = mad.value.opsi_private_endpoint_id
          system_tags                  = mad.value.system_tags
        }
      }
      dynamic "member_database_details" {
        for_each = mvcd.value.member_database_details
        iterator = mdd
        content {
          compartment_id = mdd.value.compartment_id
          dynamic "connection_credential_details" {
            for_each = mdd.value.connection_credential_details[*]
            iterator = ccd
            content {
              credential_type        = ccd.value.credential_type
              credential_source_name = ccd.value.credential_source_name
              named_credential_id    = ccd.value.named_credential_id
              password_secret_id     = ccd.value.password_secret_id
              role                   = ccd.value.role
              user_name              = ccd.value.user_name
              wallet_secret_id       = ccd.value.wallet_secret_id
            }
          }
          dynamic "connection_details" {
            for_each = mdd.value.connection_details[*]
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
            for_each = mdd.value.credential_details[*]
            iterator = cd
            content {
              credential_type        = cd.value.credential_type
              credential_source_name = cd.value.credential_source_name
              named_credential_id    = cd.value.named_credential_id
              password_secret_id     = cd.value.password_secret_id
              role                   = cd.value.role
              user_name              = cd.value.user_name
              wallet_secret_id       = cd.value.wallet_secret_id
            }
          }
          database_id              = mdd.value.database_id
          database_resource_type   = mdd.value.database_resource_type
          dbm_private_endpoint_id  = mdd.value.dbm_private_endpoint_id
          defined_tags             = mdd.value.defined_tags
          deployment_type          = mdd.value.deployment_type
          freeform_tags            = mdd.value.freeform_tags
          management_agent_id      = mdd.value.management_agent_id
          opsi_private_endpoint_id = mdd.value.opsi_private_endpoint_id
          service_name             = mdd.value.service_name
          system_tags              = mdd.value.system_tags
        }
      }
      opsi_private_endpoint_id = mvcd.value.opsi_private_endpoint_id
      vm_cluster_type          = mvcd.value.vm_cluster_type
      vmcluster_id             = mvcd.value.vmcluster_id
    }
  }
}
