output "kubernetes_clusters" {
  description = "All kubernetes_cluster resources"
  value       = azurerm_kubernetes_cluster.kubernetes_clusters
  sensitive   = true
}
output "kubernetes_clusters_aci_connector_linux" {
  description = "List of aci_connector_linux values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.aci_connector_linux]
}
output "kubernetes_clusters_ai_toolchain_operator_enabled" {
  description = "List of ai_toolchain_operator_enabled values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.ai_toolchain_operator_enabled]
}
output "kubernetes_clusters_api_server_access_profile" {
  description = "List of api_server_access_profile values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.api_server_access_profile]
}
output "kubernetes_clusters_auto_scaler_profile" {
  description = "List of auto_scaler_profile values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.auto_scaler_profile]
}
output "kubernetes_clusters_automatic_upgrade_channel" {
  description = "List of automatic_upgrade_channel values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.automatic_upgrade_channel]
}
output "kubernetes_clusters_azure_active_directory_role_based_access_control" {
  description = "List of azure_active_directory_role_based_access_control values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.azure_active_directory_role_based_access_control]
}
output "kubernetes_clusters_azure_policy_enabled" {
  description = "List of azure_policy_enabled values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.azure_policy_enabled]
}
output "kubernetes_clusters_bootstrap_profile" {
  description = "List of bootstrap_profile values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.bootstrap_profile]
}
output "kubernetes_clusters_confidential_computing" {
  description = "List of confidential_computing values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.confidential_computing]
}
output "kubernetes_clusters_cost_analysis_enabled" {
  description = "List of cost_analysis_enabled values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.cost_analysis_enabled]
}
output "kubernetes_clusters_current_kubernetes_version" {
  description = "List of current_kubernetes_version values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.current_kubernetes_version]
}
output "kubernetes_clusters_custom_ca_trust_certificates_base64" {
  description = "List of custom_ca_trust_certificates_base64 values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.custom_ca_trust_certificates_base64]
}
output "kubernetes_clusters_default_node_pool" {
  description = "List of default_node_pool values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.default_node_pool]
}
output "kubernetes_clusters_disk_encryption_set_id" {
  description = "List of disk_encryption_set_id values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.disk_encryption_set_id]
}
output "kubernetes_clusters_dns_prefix" {
  description = "List of dns_prefix values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.dns_prefix]
}
output "kubernetes_clusters_dns_prefix_private_cluster" {
  description = "List of dns_prefix_private_cluster values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.dns_prefix_private_cluster]
}
output "kubernetes_clusters_edge_zone" {
  description = "List of edge_zone values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.edge_zone]
}
output "kubernetes_clusters_fqdn" {
  description = "List of fqdn values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.fqdn]
}
output "kubernetes_clusters_http_application_routing_enabled" {
  description = "List of http_application_routing_enabled values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.http_application_routing_enabled]
}
output "kubernetes_clusters_http_application_routing_zone_name" {
  description = "List of http_application_routing_zone_name values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.http_application_routing_zone_name]
}
output "kubernetes_clusters_http_proxy_config" {
  description = "List of http_proxy_config values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.http_proxy_config]
  sensitive   = true
}
output "kubernetes_clusters_identity" {
  description = "List of identity values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.identity]
}
output "kubernetes_clusters_image_cleaner_enabled" {
  description = "List of image_cleaner_enabled values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.image_cleaner_enabled]
}
output "kubernetes_clusters_image_cleaner_interval_hours" {
  description = "List of image_cleaner_interval_hours values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.image_cleaner_interval_hours]
}
output "kubernetes_clusters_ingress_application_gateway" {
  description = "List of ingress_application_gateway values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.ingress_application_gateway]
}
output "kubernetes_clusters_key_management_service" {
  description = "List of key_management_service values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.key_management_service]
}
output "kubernetes_clusters_key_vault_secrets_provider" {
  description = "List of key_vault_secrets_provider values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.key_vault_secrets_provider]
}
output "kubernetes_clusters_kube_admin_config" {
  description = "List of kube_admin_config values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.kube_admin_config]
  sensitive   = true
}
output "kubernetes_clusters_kube_admin_config_raw" {
  description = "List of kube_admin_config_raw values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.kube_admin_config_raw]
  sensitive   = true
}
output "kubernetes_clusters_kube_config" {
  description = "List of kube_config values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.kube_config]
  sensitive   = true
}
output "kubernetes_clusters_kube_config_raw" {
  description = "List of kube_config_raw values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.kube_config_raw]
  sensitive   = true
}
output "kubernetes_clusters_kubelet_identity" {
  description = "List of kubelet_identity values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.kubelet_identity]
}
output "kubernetes_clusters_kubernetes_version" {
  description = "List of kubernetes_version values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.kubernetes_version]
}
output "kubernetes_clusters_linux_profile" {
  description = "List of linux_profile values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.linux_profile]
}
output "kubernetes_clusters_local_account_disabled" {
  description = "List of local_account_disabled values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.local_account_disabled]
}
output "kubernetes_clusters_location" {
  description = "List of location values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.location]
}
output "kubernetes_clusters_maintenance_window" {
  description = "List of maintenance_window values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.maintenance_window]
}
output "kubernetes_clusters_maintenance_window_auto_upgrade" {
  description = "List of maintenance_window_auto_upgrade values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.maintenance_window_auto_upgrade]
}
output "kubernetes_clusters_maintenance_window_node_os" {
  description = "List of maintenance_window_node_os values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.maintenance_window_node_os]
}
output "kubernetes_clusters_microsoft_defender" {
  description = "List of microsoft_defender values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.microsoft_defender]
}
output "kubernetes_clusters_monitor_metrics" {
  description = "List of monitor_metrics values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.monitor_metrics]
}
output "kubernetes_clusters_name" {
  description = "List of name values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.name]
}
output "kubernetes_clusters_network_profile" {
  description = "List of network_profile values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.network_profile]
}
output "kubernetes_clusters_node_os_upgrade_channel" {
  description = "List of node_os_upgrade_channel values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.node_os_upgrade_channel]
}
output "kubernetes_clusters_node_provisioning_profile" {
  description = "List of node_provisioning_profile values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.node_provisioning_profile]
}
output "kubernetes_clusters_node_resource_group" {
  description = "List of node_resource_group values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.node_resource_group]
}
output "kubernetes_clusters_node_resource_group_id" {
  description = "List of node_resource_group_id values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.node_resource_group_id]
}
output "kubernetes_clusters_oidc_issuer_enabled" {
  description = "List of oidc_issuer_enabled values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.oidc_issuer_enabled]
}
output "kubernetes_clusters_oidc_issuer_url" {
  description = "List of oidc_issuer_url values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.oidc_issuer_url]
}
output "kubernetes_clusters_oms_agent" {
  description = "List of oms_agent values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.oms_agent]
}
output "kubernetes_clusters_open_service_mesh_enabled" {
  description = "List of open_service_mesh_enabled values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.open_service_mesh_enabled]
}
output "kubernetes_clusters_portal_fqdn" {
  description = "List of portal_fqdn values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.portal_fqdn]
}
output "kubernetes_clusters_private_cluster_enabled" {
  description = "List of private_cluster_enabled values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.private_cluster_enabled]
}
output "kubernetes_clusters_private_cluster_public_fqdn_enabled" {
  description = "List of private_cluster_public_fqdn_enabled values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.private_cluster_public_fqdn_enabled]
}
output "kubernetes_clusters_private_dns_zone_id" {
  description = "List of private_dns_zone_id values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.private_dns_zone_id]
}
output "kubernetes_clusters_private_fqdn" {
  description = "List of private_fqdn values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.private_fqdn]
}
output "kubernetes_clusters_resource_group_name" {
  description = "List of resource_group_name values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.resource_group_name]
}
output "kubernetes_clusters_role_based_access_control_enabled" {
  description = "List of role_based_access_control_enabled values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.role_based_access_control_enabled]
}
output "kubernetes_clusters_run_command_enabled" {
  description = "List of run_command_enabled values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.run_command_enabled]
}
output "kubernetes_clusters_service_mesh_profile" {
  description = "List of service_mesh_profile values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.service_mesh_profile]
}
output "kubernetes_clusters_service_principal" {
  description = "List of service_principal values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.service_principal]
  sensitive   = true
}
output "kubernetes_clusters_sku_tier" {
  description = "List of sku_tier values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.sku_tier]
}
output "kubernetes_clusters_storage_profile" {
  description = "List of storage_profile values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.storage_profile]
}
output "kubernetes_clusters_support_plan" {
  description = "List of support_plan values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.support_plan]
}
output "kubernetes_clusters_tags" {
  description = "List of tags values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.tags]
}
output "kubernetes_clusters_upgrade_override" {
  description = "List of upgrade_override values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.upgrade_override]
}
output "kubernetes_clusters_web_app_routing" {
  description = "List of web_app_routing values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.web_app_routing]
}
output "kubernetes_clusters_windows_profile" {
  description = "List of windows_profile values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.windows_profile]
  sensitive   = true
}
output "kubernetes_clusters_workload_autoscaler_profile" {
  description = "List of workload_autoscaler_profile values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.workload_autoscaler_profile]
}
output "kubernetes_clusters_workload_identity_enabled" {
  description = "List of workload_identity_enabled values across all kubernetes_clusters"
  value       = [for k, v in azurerm_kubernetes_cluster.kubernetes_clusters : v.workload_identity_enabled]
}

