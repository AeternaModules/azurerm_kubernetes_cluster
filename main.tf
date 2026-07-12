resource "azurerm_kubernetes_cluster" "kubernetes_clusters" {
  for_each = var.kubernetes_clusters

  location                            = each.value.location
  name                                = each.value.name
  resource_group_name                 = each.value.resource_group_name
  support_plan                        = each.value.support_plan
  sku_tier                            = each.value.sku_tier
  run_command_enabled                 = each.value.run_command_enabled
  role_based_access_control_enabled   = each.value.role_based_access_control_enabled
  private_dns_zone_id                 = each.value.private_dns_zone_id
  private_cluster_public_fqdn_enabled = each.value.private_cluster_public_fqdn_enabled
  private_cluster_enabled             = each.value.private_cluster_enabled
  open_service_mesh_enabled           = each.value.open_service_mesh_enabled
  oidc_issuer_enabled                 = each.value.oidc_issuer_enabled
  node_resource_group                 = each.value.node_resource_group
  node_os_upgrade_channel             = each.value.node_os_upgrade_channel
  local_account_disabled              = each.value.local_account_disabled
  image_cleaner_interval_hours        = each.value.image_cleaner_interval_hours
  tags                                = each.value.tags
  image_cleaner_enabled               = each.value.image_cleaner_enabled
  http_application_routing_enabled    = each.value.http_application_routing_enabled
  edge_zone                           = each.value.edge_zone
  dns_prefix_private_cluster          = each.value.dns_prefix_private_cluster
  dns_prefix                          = each.value.dns_prefix
  disk_encryption_set_id              = each.value.disk_encryption_set_id
  custom_ca_trust_certificates_base64 = each.value.custom_ca_trust_certificates_base64
  cost_analysis_enabled               = each.value.cost_analysis_enabled
  azure_policy_enabled                = each.value.azure_policy_enabled
  automatic_upgrade_channel           = each.value.automatic_upgrade_channel
  ai_toolchain_operator_enabled       = each.value.ai_toolchain_operator_enabled
  kubernetes_version                  = each.value.kubernetes_version
  workload_identity_enabled           = each.value.workload_identity_enabled

  default_node_pool {
    auto_scaling_enabled          = each.value.default_node_pool.auto_scaling_enabled
    capacity_reservation_group_id = each.value.default_node_pool.capacity_reservation_group_id
    fips_enabled                  = each.value.default_node_pool.fips_enabled
    gpu_driver                    = each.value.default_node_pool.gpu_driver
    gpu_instance                  = each.value.default_node_pool.gpu_instance
    host_encryption_enabled       = each.value.default_node_pool.host_encryption_enabled
    host_group_id                 = each.value.default_node_pool.host_group_id
    dynamic "kubelet_config" {
      for_each = each.value.default_node_pool.kubelet_config != null ? [each.value.default_node_pool.kubelet_config] : []
      content {
        allowed_unsafe_sysctls    = kubelet_config.value.allowed_unsafe_sysctls
        container_log_max_files   = kubelet_config.value.container_log_max_files
        container_log_max_line    = kubelet_config.value.container_log_max_line
        container_log_max_size_mb = kubelet_config.value.container_log_max_size_mb
        cpu_cfs_quota_enabled     = kubelet_config.value.cpu_cfs_quota_enabled
        cpu_cfs_quota_period      = kubelet_config.value.cpu_cfs_quota_period
        cpu_manager_policy        = kubelet_config.value.cpu_manager_policy
        image_gc_high_threshold   = kubelet_config.value.image_gc_high_threshold
        image_gc_low_threshold    = kubelet_config.value.image_gc_low_threshold
        pod_max_pid               = kubelet_config.value.pod_max_pid
        topology_manager_policy   = kubelet_config.value.topology_manager_policy
      }
    }
    kubelet_disk_type = each.value.default_node_pool.kubelet_disk_type
    dynamic "linux_os_config" {
      for_each = each.value.default_node_pool.linux_os_config != null ? [each.value.default_node_pool.linux_os_config] : []
      content {
        swap_file_size_mb = linux_os_config.value.swap_file_size_mb
        dynamic "sysctl_config" {
          for_each = linux_os_config.value.sysctl_config != null ? [linux_os_config.value.sysctl_config] : []
          content {
            fs_aio_max_nr                      = sysctl_config.value.fs_aio_max_nr
            fs_file_max                        = sysctl_config.value.fs_file_max
            fs_inotify_max_user_watches        = sysctl_config.value.fs_inotify_max_user_watches
            fs_nr_open                         = sysctl_config.value.fs_nr_open
            kernel_threads_max                 = sysctl_config.value.kernel_threads_max
            net_core_netdev_max_backlog        = sysctl_config.value.net_core_netdev_max_backlog
            net_core_optmem_max                = sysctl_config.value.net_core_optmem_max
            net_core_rmem_default              = sysctl_config.value.net_core_rmem_default
            net_core_rmem_max                  = sysctl_config.value.net_core_rmem_max
            net_core_somaxconn                 = sysctl_config.value.net_core_somaxconn
            net_core_wmem_default              = sysctl_config.value.net_core_wmem_default
            net_core_wmem_max                  = sysctl_config.value.net_core_wmem_max
            net_ipv4_ip_local_port_range_max   = sysctl_config.value.net_ipv4_ip_local_port_range_max
            net_ipv4_ip_local_port_range_min   = sysctl_config.value.net_ipv4_ip_local_port_range_min
            net_ipv4_neigh_default_gc_thresh1  = sysctl_config.value.net_ipv4_neigh_default_gc_thresh1
            net_ipv4_neigh_default_gc_thresh2  = sysctl_config.value.net_ipv4_neigh_default_gc_thresh2
            net_ipv4_neigh_default_gc_thresh3  = sysctl_config.value.net_ipv4_neigh_default_gc_thresh3
            net_ipv4_tcp_fin_timeout           = sysctl_config.value.net_ipv4_tcp_fin_timeout
            net_ipv4_tcp_keepalive_intvl       = sysctl_config.value.net_ipv4_tcp_keepalive_intvl
            net_ipv4_tcp_keepalive_probes      = sysctl_config.value.net_ipv4_tcp_keepalive_probes
            net_ipv4_tcp_keepalive_time        = sysctl_config.value.net_ipv4_tcp_keepalive_time
            net_ipv4_tcp_max_syn_backlog       = sysctl_config.value.net_ipv4_tcp_max_syn_backlog
            net_ipv4_tcp_max_tw_buckets        = sysctl_config.value.net_ipv4_tcp_max_tw_buckets
            net_ipv4_tcp_tw_reuse              = sysctl_config.value.net_ipv4_tcp_tw_reuse
            net_netfilter_nf_conntrack_buckets = sysctl_config.value.net_netfilter_nf_conntrack_buckets
            net_netfilter_nf_conntrack_max     = sysctl_config.value.net_netfilter_nf_conntrack_max
            vm_max_map_count                   = sysctl_config.value.vm_max_map_count
            vm_swappiness                      = sysctl_config.value.vm_swappiness
            vm_vfs_cache_pressure              = sysctl_config.value.vm_vfs_cache_pressure
          }
        }
        transparent_huge_page         = linux_os_config.value.transparent_huge_page
        transparent_huge_page_defrag  = linux_os_config.value.transparent_huge_page_defrag
        transparent_huge_page_enabled = linux_os_config.value.transparent_huge_page_enabled
      }
    }
    max_count   = each.value.default_node_pool.max_count
    max_pods    = each.value.default_node_pool.max_pods
    min_count   = each.value.default_node_pool.min_count
    name        = each.value.default_node_pool.name
    node_count  = each.value.default_node_pool.node_count
    node_labels = each.value.default_node_pool.node_labels
    dynamic "node_network_profile" {
      for_each = each.value.default_node_pool.node_network_profile != null ? [each.value.default_node_pool.node_network_profile] : []
      content {
        dynamic "allowed_host_ports" {
          for_each = node_network_profile.value.allowed_host_ports != null ? node_network_profile.value.allowed_host_ports : []
          content {
            port_end   = allowed_host_ports.value.port_end
            port_start = allowed_host_ports.value.port_start
            protocol   = allowed_host_ports.value.protocol
          }
        }
        application_security_group_ids = node_network_profile.value.application_security_group_ids
        node_public_ip_tags            = node_network_profile.value.node_public_ip_tags
      }
    }
    node_public_ip_enabled       = each.value.default_node_pool.node_public_ip_enabled
    node_public_ip_prefix_id     = each.value.default_node_pool.node_public_ip_prefix_id
    only_critical_addons_enabled = each.value.default_node_pool.only_critical_addons_enabled
    orchestrator_version         = each.value.default_node_pool.orchestrator_version
    os_disk_size_gb              = each.value.default_node_pool.os_disk_size_gb
    os_disk_type                 = each.value.default_node_pool.os_disk_type
    os_sku                       = each.value.default_node_pool.os_sku
    pod_subnet_id                = each.value.default_node_pool.pod_subnet_id
    proximity_placement_group_id = each.value.default_node_pool.proximity_placement_group_id
    scale_down_mode              = each.value.default_node_pool.scale_down_mode
    snapshot_id                  = each.value.default_node_pool.snapshot_id
    tags                         = each.value.default_node_pool.tags
    temporary_name_for_rotation  = each.value.default_node_pool.temporary_name_for_rotation
    type                         = each.value.default_node_pool.type
    ultra_ssd_enabled            = each.value.default_node_pool.ultra_ssd_enabled
    dynamic "upgrade_settings" {
      for_each = each.value.default_node_pool.upgrade_settings != null ? [each.value.default_node_pool.upgrade_settings] : []
      content {
        drain_timeout_in_minutes      = upgrade_settings.value.drain_timeout_in_minutes
        max_surge                     = upgrade_settings.value.max_surge
        node_soak_duration_in_minutes = upgrade_settings.value.node_soak_duration_in_minutes
        undrainable_node_behavior     = upgrade_settings.value.undrainable_node_behavior
      }
    }
    vm_size          = each.value.default_node_pool.vm_size
    vnet_subnet_id   = each.value.default_node_pool.vnet_subnet_id
    workload_runtime = each.value.default_node_pool.workload_runtime
    zones            = each.value.default_node_pool.zones
  }

  dynamic "aci_connector_linux" {
    for_each = each.value.aci_connector_linux != null ? [each.value.aci_connector_linux] : []
    content {
      subnet_name = aci_connector_linux.value.subnet_name
    }
  }

  dynamic "api_server_access_profile" {
    for_each = each.value.api_server_access_profile != null ? [each.value.api_server_access_profile] : []
    content {
      authorized_ip_ranges                = api_server_access_profile.value.authorized_ip_ranges
      subnet_id                           = api_server_access_profile.value.subnet_id
      virtual_network_integration_enabled = api_server_access_profile.value.virtual_network_integration_enabled
    }
  }

  dynamic "auto_scaler_profile" {
    for_each = each.value.auto_scaler_profile != null ? [each.value.auto_scaler_profile] : []
    content {
      balance_similar_node_groups                   = auto_scaler_profile.value.balance_similar_node_groups
      daemonset_eviction_for_empty_nodes_enabled    = auto_scaler_profile.value.daemonset_eviction_for_empty_nodes_enabled
      daemonset_eviction_for_occupied_nodes_enabled = auto_scaler_profile.value.daemonset_eviction_for_occupied_nodes_enabled
      empty_bulk_delete_max                         = auto_scaler_profile.value.empty_bulk_delete_max
      expander                                      = auto_scaler_profile.value.expander
      ignore_daemonsets_utilization_enabled         = auto_scaler_profile.value.ignore_daemonsets_utilization_enabled
      max_graceful_termination_sec                  = auto_scaler_profile.value.max_graceful_termination_sec
      max_node_provisioning_time                    = auto_scaler_profile.value.max_node_provisioning_time
      max_unready_nodes                             = auto_scaler_profile.value.max_unready_nodes
      max_unready_percentage                        = auto_scaler_profile.value.max_unready_percentage
      new_pod_scale_up_delay                        = auto_scaler_profile.value.new_pod_scale_up_delay
      scale_down_delay_after_add                    = auto_scaler_profile.value.scale_down_delay_after_add
      scale_down_delay_after_delete                 = auto_scaler_profile.value.scale_down_delay_after_delete
      scale_down_delay_after_failure                = auto_scaler_profile.value.scale_down_delay_after_failure
      scale_down_unneeded                           = auto_scaler_profile.value.scale_down_unneeded
      scale_down_unready                            = auto_scaler_profile.value.scale_down_unready
      scale_down_utilization_threshold              = auto_scaler_profile.value.scale_down_utilization_threshold
      scan_interval                                 = auto_scaler_profile.value.scan_interval
      skip_nodes_with_local_storage                 = auto_scaler_profile.value.skip_nodes_with_local_storage
      skip_nodes_with_system_pods                   = auto_scaler_profile.value.skip_nodes_with_system_pods
    }
  }

  dynamic "azure_active_directory_role_based_access_control" {
    for_each = each.value.azure_active_directory_role_based_access_control != null ? [each.value.azure_active_directory_role_based_access_control] : []
    content {
      admin_group_object_ids = azure_active_directory_role_based_access_control.value.admin_group_object_ids
      azure_rbac_enabled     = azure_active_directory_role_based_access_control.value.azure_rbac_enabled
      tenant_id              = azure_active_directory_role_based_access_control.value.tenant_id
    }
  }

  dynamic "bootstrap_profile" {
    for_each = each.value.bootstrap_profile != null ? [each.value.bootstrap_profile] : []
    content {
      artifact_source       = bootstrap_profile.value.artifact_source
      container_registry_id = bootstrap_profile.value.container_registry_id
    }
  }

  dynamic "confidential_computing" {
    for_each = each.value.confidential_computing != null ? [each.value.confidential_computing] : []
    content {
      sgx_quote_helper_enabled = confidential_computing.value.sgx_quote_helper_enabled
    }
  }

  dynamic "http_proxy_config" {
    for_each = each.value.http_proxy_config != null ? [each.value.http_proxy_config] : []
    content {
      http_proxy  = http_proxy_config.value.http_proxy
      https_proxy = http_proxy_config.value.https_proxy
      no_proxy    = http_proxy_config.value.no_proxy
      trusted_ca  = http_proxy_config.value.trusted_ca
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }

  dynamic "ingress_application_gateway" {
    for_each = each.value.ingress_application_gateway != null ? [each.value.ingress_application_gateway] : []
    content {
      gateway_id   = ingress_application_gateway.value.gateway_id
      gateway_name = ingress_application_gateway.value.gateway_name
      subnet_cidr  = ingress_application_gateway.value.subnet_cidr
      subnet_id    = ingress_application_gateway.value.subnet_id
    }
  }

  dynamic "key_management_service" {
    for_each = each.value.key_management_service != null ? [each.value.key_management_service] : []
    content {
      key_vault_key_id         = key_management_service.value.key_vault_key_id
      key_vault_network_access = key_management_service.value.key_vault_network_access
    }
  }

  dynamic "key_vault_secrets_provider" {
    for_each = each.value.key_vault_secrets_provider != null ? [each.value.key_vault_secrets_provider] : []
    content {
      secret_rotation_enabled  = key_vault_secrets_provider.value.secret_rotation_enabled
      secret_rotation_interval = key_vault_secrets_provider.value.secret_rotation_interval
    }
  }

  dynamic "kubelet_identity" {
    for_each = each.value.kubelet_identity != null ? [each.value.kubelet_identity] : []
    content {
      client_id                 = kubelet_identity.value.client_id
      object_id                 = kubelet_identity.value.object_id
      user_assigned_identity_id = kubelet_identity.value.user_assigned_identity_id
    }
  }

  dynamic "linux_profile" {
    for_each = each.value.linux_profile != null ? [each.value.linux_profile] : []
    content {
      admin_username = linux_profile.value.admin_username
      ssh_key {
        key_data = linux_profile.value.ssh_key.key_data
      }
    }
  }

  dynamic "maintenance_window" {
    for_each = each.value.maintenance_window != null ? [each.value.maintenance_window] : []
    content {
      dynamic "allowed" {
        for_each = maintenance_window.value.allowed != null ? maintenance_window.value.allowed : []
        content {
          day   = allowed.value.day
          hours = allowed.value.hours
        }
      }
      dynamic "not_allowed" {
        for_each = maintenance_window.value.not_allowed != null ? maintenance_window.value.not_allowed : []
        content {
          end   = not_allowed.value.end
          start = not_allowed.value.start
        }
      }
    }
  }

  dynamic "maintenance_window_auto_upgrade" {
    for_each = each.value.maintenance_window_auto_upgrade != null ? [each.value.maintenance_window_auto_upgrade] : []
    content {
      day_of_month = maintenance_window_auto_upgrade.value.day_of_month
      day_of_week  = maintenance_window_auto_upgrade.value.day_of_week
      duration     = maintenance_window_auto_upgrade.value.duration
      frequency    = maintenance_window_auto_upgrade.value.frequency
      interval     = maintenance_window_auto_upgrade.value.interval
      dynamic "not_allowed" {
        for_each = maintenance_window_auto_upgrade.value.not_allowed != null ? maintenance_window_auto_upgrade.value.not_allowed : []
        content {
          end   = not_allowed.value.end
          start = not_allowed.value.start
        }
      }
      start_date = maintenance_window_auto_upgrade.value.start_date
      start_time = maintenance_window_auto_upgrade.value.start_time
      utc_offset = maintenance_window_auto_upgrade.value.utc_offset
      week_index = maintenance_window_auto_upgrade.value.week_index
    }
  }

  dynamic "maintenance_window_node_os" {
    for_each = each.value.maintenance_window_node_os != null ? [each.value.maintenance_window_node_os] : []
    content {
      day_of_month = maintenance_window_node_os.value.day_of_month
      day_of_week  = maintenance_window_node_os.value.day_of_week
      duration     = maintenance_window_node_os.value.duration
      frequency    = maintenance_window_node_os.value.frequency
      interval     = maintenance_window_node_os.value.interval
      dynamic "not_allowed" {
        for_each = maintenance_window_node_os.value.not_allowed != null ? maintenance_window_node_os.value.not_allowed : []
        content {
          end   = not_allowed.value.end
          start = not_allowed.value.start
        }
      }
      start_date = maintenance_window_node_os.value.start_date
      start_time = maintenance_window_node_os.value.start_time
      utc_offset = maintenance_window_node_os.value.utc_offset
      week_index = maintenance_window_node_os.value.week_index
    }
  }

  dynamic "microsoft_defender" {
    for_each = each.value.microsoft_defender != null ? [each.value.microsoft_defender] : []
    content {
      log_analytics_workspace_id = microsoft_defender.value.log_analytics_workspace_id
    }
  }

  dynamic "monitor_metrics" {
    for_each = each.value.monitor_metrics != null ? [each.value.monitor_metrics] : []
    content {
      annotations_allowed = monitor_metrics.value.annotations_allowed
      labels_allowed      = monitor_metrics.value.labels_allowed
    }
  }

  dynamic "network_profile" {
    for_each = each.value.network_profile != null ? [each.value.network_profile] : []
    content {
      dynamic "advanced_networking" {
        for_each = network_profile.value.advanced_networking != null ? [network_profile.value.advanced_networking] : []
        content {
          observability_enabled = advanced_networking.value.observability_enabled
          security_enabled      = advanced_networking.value.security_enabled
        }
      }
      dns_service_ip = network_profile.value.dns_service_ip
      ip_versions    = network_profile.value.ip_versions
      dynamic "load_balancer_profile" {
        for_each = network_profile.value.load_balancer_profile != null ? [network_profile.value.load_balancer_profile] : []
        content {
          backend_pool_type           = load_balancer_profile.value.backend_pool_type
          idle_timeout_in_minutes     = load_balancer_profile.value.idle_timeout_in_minutes
          managed_outbound_ip_count   = load_balancer_profile.value.managed_outbound_ip_count
          managed_outbound_ipv6_count = load_balancer_profile.value.managed_outbound_ipv6_count
          outbound_ip_address_ids     = load_balancer_profile.value.outbound_ip_address_ids
          outbound_ip_prefix_ids      = load_balancer_profile.value.outbound_ip_prefix_ids
          outbound_ports_allocated    = load_balancer_profile.value.outbound_ports_allocated
        }
      }
      load_balancer_sku = network_profile.value.load_balancer_sku
      dynamic "nat_gateway_profile" {
        for_each = network_profile.value.nat_gateway_profile != null ? [network_profile.value.nat_gateway_profile] : []
        content {
          idle_timeout_in_minutes   = nat_gateway_profile.value.idle_timeout_in_minutes
          managed_outbound_ip_count = nat_gateway_profile.value.managed_outbound_ip_count
        }
      }
      network_data_plane  = network_profile.value.network_data_plane
      network_mode        = network_profile.value.network_mode
      network_plugin      = network_profile.value.network_plugin
      network_plugin_mode = network_profile.value.network_plugin_mode
      network_policy      = network_profile.value.network_policy
      outbound_type       = network_profile.value.outbound_type
      pod_cidr            = network_profile.value.pod_cidr
      pod_cidrs           = network_profile.value.pod_cidrs
      service_cidr        = network_profile.value.service_cidr
      service_cidrs       = network_profile.value.service_cidrs
    }
  }

  dynamic "node_provisioning_profile" {
    for_each = each.value.node_provisioning_profile != null ? [each.value.node_provisioning_profile] : []
    content {
      default_node_pools = node_provisioning_profile.value.default_node_pools
      mode               = node_provisioning_profile.value.mode
    }
  }

  dynamic "oms_agent" {
    for_each = each.value.oms_agent != null ? [each.value.oms_agent] : []
    content {
      log_analytics_workspace_id      = oms_agent.value.log_analytics_workspace_id
      msi_auth_for_monitoring_enabled = oms_agent.value.msi_auth_for_monitoring_enabled
    }
  }

  dynamic "service_mesh_profile" {
    for_each = each.value.service_mesh_profile != null ? [each.value.service_mesh_profile] : []
    content {
      dynamic "certificate_authority" {
        for_each = service_mesh_profile.value.certificate_authority != null ? [service_mesh_profile.value.certificate_authority] : []
        content {
          cert_chain_object_name = certificate_authority.value.cert_chain_object_name
          cert_object_name       = certificate_authority.value.cert_object_name
          key_object_name        = certificate_authority.value.key_object_name
          key_vault_id           = certificate_authority.value.key_vault_id
          root_cert_object_name  = certificate_authority.value.root_cert_object_name
        }
      }
      external_ingress_gateway_enabled = service_mesh_profile.value.external_ingress_gateway_enabled
      internal_ingress_gateway_enabled = service_mesh_profile.value.internal_ingress_gateway_enabled
      mode                             = service_mesh_profile.value.mode
      revisions                        = service_mesh_profile.value.revisions
    }
  }

  dynamic "service_principal" {
    for_each = each.value.service_principal != null ? [each.value.service_principal] : []
    content {
      client_id     = service_principal.value.client_id
      client_secret = service_principal.value.client_secret
    }
  }

  dynamic "storage_profile" {
    for_each = each.value.storage_profile != null ? [each.value.storage_profile] : []
    content {
      blob_driver_enabled         = storage_profile.value.blob_driver_enabled
      disk_driver_enabled         = storage_profile.value.disk_driver_enabled
      file_driver_enabled         = storage_profile.value.file_driver_enabled
      snapshot_controller_enabled = storage_profile.value.snapshot_controller_enabled
    }
  }

  dynamic "upgrade_override" {
    for_each = each.value.upgrade_override != null ? [each.value.upgrade_override] : []
    content {
      effective_until       = upgrade_override.value.effective_until
      force_upgrade_enabled = upgrade_override.value.force_upgrade_enabled
    }
  }

  dynamic "web_app_routing" {
    for_each = each.value.web_app_routing != null ? [each.value.web_app_routing] : []
    content {
      default_nginx_controller = web_app_routing.value.default_nginx_controller
      dns_zone_ids             = web_app_routing.value.dns_zone_ids
    }
  }

  dynamic "windows_profile" {
    for_each = each.value.windows_profile != null ? [each.value.windows_profile] : []
    content {
      admin_password = windows_profile.value.admin_password
      admin_username = windows_profile.value.admin_username
      dynamic "gmsa" {
        for_each = windows_profile.value.gmsa != null ? [windows_profile.value.gmsa] : []
        content {
          dns_server  = gmsa.value.dns_server
          root_domain = gmsa.value.root_domain
        }
      }
      license = windows_profile.value.license
    }
  }

  dynamic "workload_autoscaler_profile" {
    for_each = each.value.workload_autoscaler_profile != null ? [each.value.workload_autoscaler_profile] : []
    content {
      keda_enabled                    = workload_autoscaler_profile.value.keda_enabled
      vertical_pod_autoscaler_enabled = workload_autoscaler_profile.value.vertical_pod_autoscaler_enabled
    }
  }
}

