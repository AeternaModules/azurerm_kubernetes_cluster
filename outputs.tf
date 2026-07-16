output "kubernetes_clusters_id" {
  description = "Map of id values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kubernetes_clusters_aci_connector_linux" {
  description = "Map of aci_connector_linux values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.aci_connector_linux if v.aci_connector_linux != null && length(v.aci_connector_linux) > 0 }
}
output "kubernetes_clusters_ai_toolchain_operator_enabled" {
  description = "Map of ai_toolchain_operator_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.ai_toolchain_operator_enabled if v.ai_toolchain_operator_enabled != null }
}
output "kubernetes_clusters_api_server_access_profile" {
  description = "Map of api_server_access_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.api_server_access_profile if v.api_server_access_profile != null && length(v.api_server_access_profile) > 0 }
}
output "kubernetes_clusters_auto_scaler_profile" {
  description = "Map of auto_scaler_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.auto_scaler_profile if v.auto_scaler_profile != null && length(v.auto_scaler_profile) > 0 }
}
output "kubernetes_clusters_automatic_upgrade_channel" {
  description = "Map of automatic_upgrade_channel values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.automatic_upgrade_channel if v.automatic_upgrade_channel != null && length(v.automatic_upgrade_channel) > 0 }
}
output "kubernetes_clusters_azure_active_directory_role_based_access_control" {
  description = "Map of azure_active_directory_role_based_access_control values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.azure_active_directory_role_based_access_control if v.azure_active_directory_role_based_access_control != null && length(v.azure_active_directory_role_based_access_control) > 0 }
}
output "kubernetes_clusters_azure_policy_enabled" {
  description = "Map of azure_policy_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.azure_policy_enabled if v.azure_policy_enabled != null }
}
output "kubernetes_clusters_bootstrap_profile" {
  description = "Map of bootstrap_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.bootstrap_profile if v.bootstrap_profile != null && length(v.bootstrap_profile) > 0 }
}
output "kubernetes_clusters_confidential_computing" {
  description = "Map of confidential_computing values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.confidential_computing if v.confidential_computing != null && length(v.confidential_computing) > 0 }
}
output "kubernetes_clusters_cost_analysis_enabled" {
  description = "Map of cost_analysis_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.cost_analysis_enabled if v.cost_analysis_enabled != null }
}
output "kubernetes_clusters_current_kubernetes_version" {
  description = "Map of current_kubernetes_version values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.current_kubernetes_version if v.current_kubernetes_version != null && length(v.current_kubernetes_version) > 0 }
}
output "kubernetes_clusters_custom_ca_trust_certificates_base64" {
  description = "Map of custom_ca_trust_certificates_base64 values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.custom_ca_trust_certificates_base64 if v.custom_ca_trust_certificates_base64 != null && length(v.custom_ca_trust_certificates_base64) > 0 }
}
output "kubernetes_clusters_default_node_pool" {
  description = "Map of default_node_pool values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.default_node_pool if v.default_node_pool != null && length(v.default_node_pool) > 0 }
}
output "kubernetes_clusters_disk_encryption_set_id" {
  description = "Map of disk_encryption_set_id values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.disk_encryption_set_id if v.disk_encryption_set_id != null && length(v.disk_encryption_set_id) > 0 }
}
output "kubernetes_clusters_dns_prefix" {
  description = "Map of dns_prefix values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.dns_prefix if v.dns_prefix != null && length(v.dns_prefix) > 0 }
}
output "kubernetes_clusters_dns_prefix_private_cluster" {
  description = "Map of dns_prefix_private_cluster values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.dns_prefix_private_cluster if v.dns_prefix_private_cluster != null && length(v.dns_prefix_private_cluster) > 0 }
}
output "kubernetes_clusters_edge_zone" {
  description = "Map of edge_zone values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.edge_zone if v.edge_zone != null && length(v.edge_zone) > 0 }
}
output "kubernetes_clusters_fqdn" {
  description = "Map of fqdn values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.fqdn if v.fqdn != null && length(v.fqdn) > 0 }
}
output "kubernetes_clusters_http_application_routing_enabled" {
  description = "Map of http_application_routing_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.http_application_routing_enabled if v.http_application_routing_enabled != null }
}
output "kubernetes_clusters_http_application_routing_zone_name" {
  description = "Map of http_application_routing_zone_name values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.http_application_routing_zone_name if v.http_application_routing_zone_name != null && length(v.http_application_routing_zone_name) > 0 }
}
output "kubernetes_clusters_http_proxy_config" {
  description = "Map of http_proxy_config values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.http_proxy_config if v.http_proxy_config != null && length(v.http_proxy_config) > 0 }
  sensitive   = true
}
output "kubernetes_clusters_identity" {
  description = "Map of identity values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "kubernetes_clusters_image_cleaner_enabled" {
  description = "Map of image_cleaner_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.image_cleaner_enabled if v.image_cleaner_enabled != null }
}
output "kubernetes_clusters_image_cleaner_interval_hours" {
  description = "Map of image_cleaner_interval_hours values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.image_cleaner_interval_hours if v.image_cleaner_interval_hours != null }
}
output "kubernetes_clusters_ingress_application_gateway" {
  description = "Map of ingress_application_gateway values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.ingress_application_gateway if v.ingress_application_gateway != null && length(v.ingress_application_gateway) > 0 }
}
output "kubernetes_clusters_key_management_service" {
  description = "Map of key_management_service values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.key_management_service if v.key_management_service != null && length(v.key_management_service) > 0 }
}
output "kubernetes_clusters_key_vault_secrets_provider" {
  description = "Map of key_vault_secrets_provider values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.key_vault_secrets_provider if v.key_vault_secrets_provider != null && length(v.key_vault_secrets_provider) > 0 }
}
output "kubernetes_clusters_kube_admin_config" {
  description = "Map of kube_admin_config values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.kube_admin_config if v.kube_admin_config != null && length(v.kube_admin_config) > 0 }
  sensitive   = true
}
output "kubernetes_clusters_kube_admin_config_raw" {
  description = "Map of kube_admin_config_raw values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.kube_admin_config_raw if v.kube_admin_config_raw != null && length(v.kube_admin_config_raw) > 0 }
  sensitive   = true
}
output "kubernetes_clusters_kube_config" {
  description = "Map of kube_config values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.kube_config if v.kube_config != null && length(v.kube_config) > 0 }
  sensitive   = true
}
output "kubernetes_clusters_kube_config_raw" {
  description = "Map of kube_config_raw values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.kube_config_raw if v.kube_config_raw != null && length(v.kube_config_raw) > 0 }
  sensitive   = true
}
output "kubernetes_clusters_kubelet_identity" {
  description = "Map of kubelet_identity values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.kubelet_identity if v.kubelet_identity != null && length(v.kubelet_identity) > 0 }
}
output "kubernetes_clusters_kubernetes_version" {
  description = "Map of kubernetes_version values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.kubernetes_version if v.kubernetes_version != null && length(v.kubernetes_version) > 0 }
}
output "kubernetes_clusters_linux_profile" {
  description = "Map of linux_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.linux_profile if v.linux_profile != null && length(v.linux_profile) > 0 }
}
output "kubernetes_clusters_local_account_disabled" {
  description = "Map of local_account_disabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.local_account_disabled if v.local_account_disabled != null }
}
output "kubernetes_clusters_location" {
  description = "Map of location values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "kubernetes_clusters_maintenance_window" {
  description = "Map of maintenance_window values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.maintenance_window if v.maintenance_window != null && length(v.maintenance_window) > 0 }
}
output "kubernetes_clusters_maintenance_window_auto_upgrade" {
  description = "Map of maintenance_window_auto_upgrade values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.maintenance_window_auto_upgrade if v.maintenance_window_auto_upgrade != null && length(v.maintenance_window_auto_upgrade) > 0 }
}
output "kubernetes_clusters_maintenance_window_node_os" {
  description = "Map of maintenance_window_node_os values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.maintenance_window_node_os if v.maintenance_window_node_os != null && length(v.maintenance_window_node_os) > 0 }
}
output "kubernetes_clusters_microsoft_defender" {
  description = "Map of microsoft_defender values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.microsoft_defender if v.microsoft_defender != null && length(v.microsoft_defender) > 0 }
}
output "kubernetes_clusters_monitor_metrics" {
  description = "Map of monitor_metrics values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.monitor_metrics if v.monitor_metrics != null && length(v.monitor_metrics) > 0 }
}
output "kubernetes_clusters_name" {
  description = "Map of name values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kubernetes_clusters_network_profile" {
  description = "Map of network_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.network_profile if v.network_profile != null && length(v.network_profile) > 0 }
}
output "kubernetes_clusters_node_os_upgrade_channel" {
  description = "Map of node_os_upgrade_channel values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.node_os_upgrade_channel if v.node_os_upgrade_channel != null && length(v.node_os_upgrade_channel) > 0 }
}
output "kubernetes_clusters_node_provisioning_profile" {
  description = "Map of node_provisioning_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.node_provisioning_profile if v.node_provisioning_profile != null && length(v.node_provisioning_profile) > 0 }
}
output "kubernetes_clusters_node_resource_group" {
  description = "Map of node_resource_group values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.node_resource_group if v.node_resource_group != null && length(v.node_resource_group) > 0 }
}
output "kubernetes_clusters_node_resource_group_id" {
  description = "Map of node_resource_group_id values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.node_resource_group_id if v.node_resource_group_id != null && length(v.node_resource_group_id) > 0 }
}
output "kubernetes_clusters_oidc_issuer_enabled" {
  description = "Map of oidc_issuer_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.oidc_issuer_enabled if v.oidc_issuer_enabled != null }
}
output "kubernetes_clusters_oidc_issuer_url" {
  description = "Map of oidc_issuer_url values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.oidc_issuer_url if v.oidc_issuer_url != null && length(v.oidc_issuer_url) > 0 }
}
output "kubernetes_clusters_oms_agent" {
  description = "Map of oms_agent values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.oms_agent if v.oms_agent != null && length(v.oms_agent) > 0 }
}
output "kubernetes_clusters_open_service_mesh_enabled" {
  description = "Map of open_service_mesh_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.open_service_mesh_enabled if v.open_service_mesh_enabled != null }
}
output "kubernetes_clusters_portal_fqdn" {
  description = "Map of portal_fqdn values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.portal_fqdn if v.portal_fqdn != null && length(v.portal_fqdn) > 0 }
}
output "kubernetes_clusters_private_cluster_enabled" {
  description = "Map of private_cluster_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.private_cluster_enabled if v.private_cluster_enabled != null }
}
output "kubernetes_clusters_private_cluster_public_fqdn_enabled" {
  description = "Map of private_cluster_public_fqdn_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.private_cluster_public_fqdn_enabled if v.private_cluster_public_fqdn_enabled != null }
}
output "kubernetes_clusters_private_dns_zone_id" {
  description = "Map of private_dns_zone_id values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.private_dns_zone_id if v.private_dns_zone_id != null && length(v.private_dns_zone_id) > 0 }
}
output "kubernetes_clusters_private_fqdn" {
  description = "Map of private_fqdn values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.private_fqdn if v.private_fqdn != null && length(v.private_fqdn) > 0 }
}
output "kubernetes_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "kubernetes_clusters_role_based_access_control_enabled" {
  description = "Map of role_based_access_control_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.role_based_access_control_enabled if v.role_based_access_control_enabled != null }
}
output "kubernetes_clusters_run_command_enabled" {
  description = "Map of run_command_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.run_command_enabled if v.run_command_enabled != null }
}
output "kubernetes_clusters_service_mesh_profile" {
  description = "Map of service_mesh_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.service_mesh_profile if v.service_mesh_profile != null && length(v.service_mesh_profile) > 0 }
}
output "kubernetes_clusters_service_principal" {
  description = "Map of service_principal values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.service_principal if v.service_principal != null && length(v.service_principal) > 0 }
  sensitive   = true
}
output "kubernetes_clusters_sku_tier" {
  description = "Map of sku_tier values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.sku_tier if v.sku_tier != null && length(v.sku_tier) > 0 }
}
output "kubernetes_clusters_storage_profile" {
  description = "Map of storage_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.storage_profile if v.storage_profile != null && length(v.storage_profile) > 0 }
}
output "kubernetes_clusters_support_plan" {
  description = "Map of support_plan values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.support_plan if v.support_plan != null && length(v.support_plan) > 0 }
}
output "kubernetes_clusters_tags" {
  description = "Map of tags values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "kubernetes_clusters_upgrade_override" {
  description = "Map of upgrade_override values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.upgrade_override if v.upgrade_override != null && length(v.upgrade_override) > 0 }
}
output "kubernetes_clusters_web_app_routing" {
  description = "Map of web_app_routing values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.web_app_routing if v.web_app_routing != null && length(v.web_app_routing) > 0 }
}
output "kubernetes_clusters_windows_profile" {
  description = "Map of windows_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.windows_profile if v.windows_profile != null && length(v.windows_profile) > 0 }
  sensitive   = true
}
output "kubernetes_clusters_workload_autoscaler_profile" {
  description = "Map of workload_autoscaler_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.workload_autoscaler_profile if v.workload_autoscaler_profile != null && length(v.workload_autoscaler_profile) > 0 }
}
output "kubernetes_clusters_workload_identity_enabled" {
  description = "Map of workload_identity_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.workload_identity_enabled if v.workload_identity_enabled != null }
}

