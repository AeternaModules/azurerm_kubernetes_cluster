output "kubernetes_clusters_aci_connector_linux" {
  description = "Map of aci_connector_linux values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.aci_connector_linux }
}
output "kubernetes_clusters_ai_toolchain_operator_enabled" {
  description = "Map of ai_toolchain_operator_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.ai_toolchain_operator_enabled }
}
output "kubernetes_clusters_api_server_access_profile" {
  description = "Map of api_server_access_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.api_server_access_profile }
}
output "kubernetes_clusters_auto_scaler_profile" {
  description = "Map of auto_scaler_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.auto_scaler_profile }
}
output "kubernetes_clusters_automatic_upgrade_channel" {
  description = "Map of automatic_upgrade_channel values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.automatic_upgrade_channel }
}
output "kubernetes_clusters_azure_active_directory_role_based_access_control" {
  description = "Map of azure_active_directory_role_based_access_control values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.azure_active_directory_role_based_access_control }
}
output "kubernetes_clusters_azure_policy_enabled" {
  description = "Map of azure_policy_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.azure_policy_enabled }
}
output "kubernetes_clusters_bootstrap_profile" {
  description = "Map of bootstrap_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.bootstrap_profile }
}
output "kubernetes_clusters_confidential_computing" {
  description = "Map of confidential_computing values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.confidential_computing }
}
output "kubernetes_clusters_cost_analysis_enabled" {
  description = "Map of cost_analysis_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.cost_analysis_enabled }
}
output "kubernetes_clusters_current_kubernetes_version" {
  description = "Map of current_kubernetes_version values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.current_kubernetes_version }
}
output "kubernetes_clusters_custom_ca_trust_certificates_base64" {
  description = "Map of custom_ca_trust_certificates_base64 values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.custom_ca_trust_certificates_base64 }
}
output "kubernetes_clusters_default_node_pool" {
  description = "Map of default_node_pool values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.default_node_pool }
}
output "kubernetes_clusters_disk_encryption_set_id" {
  description = "Map of disk_encryption_set_id values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.disk_encryption_set_id }
}
output "kubernetes_clusters_dns_prefix" {
  description = "Map of dns_prefix values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.dns_prefix }
}
output "kubernetes_clusters_dns_prefix_private_cluster" {
  description = "Map of dns_prefix_private_cluster values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.dns_prefix_private_cluster }
}
output "kubernetes_clusters_edge_zone" {
  description = "Map of edge_zone values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.edge_zone }
}
output "kubernetes_clusters_fqdn" {
  description = "Map of fqdn values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.fqdn }
}
output "kubernetes_clusters_http_application_routing_enabled" {
  description = "Map of http_application_routing_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.http_application_routing_enabled }
}
output "kubernetes_clusters_http_application_routing_zone_name" {
  description = "Map of http_application_routing_zone_name values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.http_application_routing_zone_name }
}
output "kubernetes_clusters_http_proxy_config" {
  description = "Map of http_proxy_config values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.http_proxy_config }
  sensitive   = true
}
output "kubernetes_clusters_identity" {
  description = "Map of identity values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.identity }
}
output "kubernetes_clusters_image_cleaner_enabled" {
  description = "Map of image_cleaner_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.image_cleaner_enabled }
}
output "kubernetes_clusters_image_cleaner_interval_hours" {
  description = "Map of image_cleaner_interval_hours values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.image_cleaner_interval_hours }
}
output "kubernetes_clusters_ingress_application_gateway" {
  description = "Map of ingress_application_gateway values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.ingress_application_gateway }
}
output "kubernetes_clusters_key_management_service" {
  description = "Map of key_management_service values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.key_management_service }
}
output "kubernetes_clusters_key_vault_secrets_provider" {
  description = "Map of key_vault_secrets_provider values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.key_vault_secrets_provider }
}
output "kubernetes_clusters_kube_admin_config" {
  description = "Map of kube_admin_config values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.kube_admin_config }
  sensitive   = true
}
output "kubernetes_clusters_kube_admin_config_raw" {
  description = "Map of kube_admin_config_raw values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.kube_admin_config_raw }
  sensitive   = true
}
output "kubernetes_clusters_kube_config" {
  description = "Map of kube_config values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.kube_config }
  sensitive   = true
}
output "kubernetes_clusters_kube_config_raw" {
  description = "Map of kube_config_raw values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.kube_config_raw }
  sensitive   = true
}
output "kubernetes_clusters_kubelet_identity" {
  description = "Map of kubelet_identity values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.kubelet_identity }
}
output "kubernetes_clusters_kubernetes_version" {
  description = "Map of kubernetes_version values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.kubernetes_version }
}
output "kubernetes_clusters_linux_profile" {
  description = "Map of linux_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.linux_profile }
}
output "kubernetes_clusters_local_account_disabled" {
  description = "Map of local_account_disabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.local_account_disabled }
}
output "kubernetes_clusters_location" {
  description = "Map of location values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.location }
}
output "kubernetes_clusters_maintenance_window" {
  description = "Map of maintenance_window values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.maintenance_window }
}
output "kubernetes_clusters_maintenance_window_auto_upgrade" {
  description = "Map of maintenance_window_auto_upgrade values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.maintenance_window_auto_upgrade }
}
output "kubernetes_clusters_maintenance_window_node_os" {
  description = "Map of maintenance_window_node_os values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.maintenance_window_node_os }
}
output "kubernetes_clusters_microsoft_defender" {
  description = "Map of microsoft_defender values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.microsoft_defender }
}
output "kubernetes_clusters_monitor_metrics" {
  description = "Map of monitor_metrics values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.monitor_metrics }
}
output "kubernetes_clusters_name" {
  description = "Map of name values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.name }
}
output "kubernetes_clusters_network_profile" {
  description = "Map of network_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.network_profile }
}
output "kubernetes_clusters_node_os_upgrade_channel" {
  description = "Map of node_os_upgrade_channel values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.node_os_upgrade_channel }
}
output "kubernetes_clusters_node_provisioning_profile" {
  description = "Map of node_provisioning_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.node_provisioning_profile }
}
output "kubernetes_clusters_node_resource_group" {
  description = "Map of node_resource_group values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.node_resource_group }
}
output "kubernetes_clusters_node_resource_group_id" {
  description = "Map of node_resource_group_id values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.node_resource_group_id }
}
output "kubernetes_clusters_oidc_issuer_enabled" {
  description = "Map of oidc_issuer_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.oidc_issuer_enabled }
}
output "kubernetes_clusters_oidc_issuer_url" {
  description = "Map of oidc_issuer_url values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.oidc_issuer_url }
}
output "kubernetes_clusters_oms_agent" {
  description = "Map of oms_agent values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.oms_agent }
}
output "kubernetes_clusters_open_service_mesh_enabled" {
  description = "Map of open_service_mesh_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.open_service_mesh_enabled }
}
output "kubernetes_clusters_portal_fqdn" {
  description = "Map of portal_fqdn values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.portal_fqdn }
}
output "kubernetes_clusters_private_cluster_enabled" {
  description = "Map of private_cluster_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.private_cluster_enabled }
}
output "kubernetes_clusters_private_cluster_public_fqdn_enabled" {
  description = "Map of private_cluster_public_fqdn_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.private_cluster_public_fqdn_enabled }
}
output "kubernetes_clusters_private_dns_zone_id" {
  description = "Map of private_dns_zone_id values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.private_dns_zone_id }
}
output "kubernetes_clusters_private_fqdn" {
  description = "Map of private_fqdn values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.private_fqdn }
}
output "kubernetes_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.resource_group_name }
}
output "kubernetes_clusters_role_based_access_control_enabled" {
  description = "Map of role_based_access_control_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.role_based_access_control_enabled }
}
output "kubernetes_clusters_run_command_enabled" {
  description = "Map of run_command_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.run_command_enabled }
}
output "kubernetes_clusters_service_mesh_profile" {
  description = "Map of service_mesh_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.service_mesh_profile }
}
output "kubernetes_clusters_service_principal" {
  description = "Map of service_principal values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.service_principal }
  sensitive   = true
}
output "kubernetes_clusters_sku_tier" {
  description = "Map of sku_tier values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.sku_tier }
}
output "kubernetes_clusters_storage_profile" {
  description = "Map of storage_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.storage_profile }
}
output "kubernetes_clusters_support_plan" {
  description = "Map of support_plan values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.support_plan }
}
output "kubernetes_clusters_tags" {
  description = "Map of tags values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.tags }
}
output "kubernetes_clusters_upgrade_override" {
  description = "Map of upgrade_override values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.upgrade_override }
}
output "kubernetes_clusters_web_app_routing" {
  description = "Map of web_app_routing values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.web_app_routing }
}
output "kubernetes_clusters_windows_profile" {
  description = "Map of windows_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.windows_profile }
  sensitive   = true
}
output "kubernetes_clusters_workload_autoscaler_profile" {
  description = "Map of workload_autoscaler_profile values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.workload_autoscaler_profile }
}
output "kubernetes_clusters_workload_identity_enabled" {
  description = "Map of workload_identity_enabled values across all kubernetes_clusters, keyed the same as var.kubernetes_clusters"
  value       = { for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : k => v.workload_identity_enabled }
}

