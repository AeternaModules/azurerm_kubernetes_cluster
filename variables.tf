variable "kubernetes_clusters" {
  description = <<EOT
Map of kubernetes_clusters, attributes below
Required:
    - location
    - name
    - resource_group_name
    - default_node_pool (block):
        - auto_scaling_enabled (optional)
        - capacity_reservation_group_id (optional)
        - fips_enabled (optional)
        - gpu_driver (optional)
        - gpu_instance (optional)
        - host_encryption_enabled (optional)
        - host_group_id (optional)
        - kubelet_config (optional, block):
            - allowed_unsafe_sysctls (optional)
            - container_log_max_line (optional)
            - container_log_max_size_mb (optional)
            - cpu_cfs_quota_enabled (optional)
            - cpu_cfs_quota_period (optional)
            - cpu_manager_policy (optional)
            - image_gc_high_threshold (optional)
            - image_gc_low_threshold (optional)
            - pod_max_pid (optional)
            - topology_manager_policy (optional)
        - kubelet_disk_type (optional)
        - linux_os_config (optional, block):
            - swap_file_size_mb (optional)
            - sysctl_config (optional, block):
                - fs_aio_max_nr (optional)
                - fs_file_max (optional)
                - fs_inotify_max_user_watches (optional)
                - fs_nr_open (optional)
                - kernel_threads_max (optional)
                - net_core_netdev_max_backlog (optional)
                - net_core_optmem_max (optional)
                - net_core_rmem_default (optional)
                - net_core_rmem_max (optional)
                - net_core_somaxconn (optional)
                - net_core_wmem_default (optional)
                - net_core_wmem_max (optional)
                - net_ipv4_ip_local_port_range_max (optional)
                - net_ipv4_ip_local_port_range_min (optional)
                - net_ipv4_neigh_default_gc_thresh1 (optional)
                - net_ipv4_neigh_default_gc_thresh2 (optional)
                - net_ipv4_neigh_default_gc_thresh3 (optional)
                - net_ipv4_tcp_fin_timeout (optional)
                - net_ipv4_tcp_keepalive_intvl (optional)
                - net_ipv4_tcp_keepalive_probes (optional)
                - net_ipv4_tcp_keepalive_time (optional)
                - net_ipv4_tcp_max_syn_backlog (optional)
                - net_ipv4_tcp_max_tw_buckets (optional)
                - net_ipv4_tcp_tw_reuse (optional)
                - net_netfilter_nf_conntrack_buckets (optional)
                - net_netfilter_nf_conntrack_max (optional)
                - vm_max_map_count (optional)
                - vm_swappiness (optional)
                - vm_vfs_cache_pressure (optional)
            - transparent_huge_page (optional)
            - transparent_huge_page_defrag (optional)
            - transparent_huge_page_enabled (optional)
        - max_count (optional)
        - max_pods (optional)
        - min_count (optional)
        - name (required)
        - node_count (optional)
        - node_labels (optional)
        - node_network_profile (optional, block):
            - allowed_host_ports (optional, block):
                - port_end (optional)
                - port_start (optional)
                - protocol (optional)
            - application_security_group_ids (optional)
            - node_public_ip_tags (optional)
        - node_public_ip_enabled (optional)
        - node_public_ip_prefix_id (optional)
        - only_critical_addons_enabled (optional)
        - orchestrator_version (optional)
        - os_disk_size_gb (optional)
        - os_disk_type (optional)
        - os_sku (optional)
        - pod_subnet_id (optional)
        - proximity_placement_group_id (optional)
        - scale_down_mode (optional)
        - snapshot_id (optional)
        - tags (optional)
        - temporary_name_for_rotation (optional)
        - type (optional)
        - ultra_ssd_enabled (optional)
        - upgrade_settings (optional, block):
            - drain_timeout_in_minutes (optional)
            - max_surge (required)
            - node_soak_duration_in_minutes (optional)
            - undrainable_node_behavior (optional)
        - vm_size (optional)
        - vnet_subnet_id (optional)
        - workload_runtime (optional)
        - zones (optional)
Optional:
    - ai_toolchain_operator_enabled
    - automatic_upgrade_channel
    - azure_policy_enabled
    - cost_analysis_enabled
    - custom_ca_trust_certificates_base64
    - disk_encryption_set_id
    - dns_prefix
    - dns_prefix_private_cluster
    - edge_zone
    - http_application_routing_enabled
    - image_cleaner_enabled
    - image_cleaner_interval_hours
    - kubernetes_version
    - local_account_disabled
    - node_os_upgrade_channel
    - node_resource_group
    - oidc_issuer_enabled
    - open_service_mesh_enabled
    - private_cluster_enabled
    - private_cluster_public_fqdn_enabled
    - private_dns_zone_id
    - role_based_access_control_enabled
    - run_command_enabled
    - sku_tier
    - support_plan
    - tags
    - workload_identity_enabled
    - aci_connector_linux (block):
        - subnet_name (required)
    - api_server_access_profile (block):
        - authorized_ip_ranges (optional)
        - subnet_id (optional)
        - virtual_network_integration_enabled (optional)
    - auto_scaler_profile (block):
        - balance_similar_node_groups (optional)
        - daemonset_eviction_for_empty_nodes_enabled (optional)
        - daemonset_eviction_for_occupied_nodes_enabled (optional)
        - empty_bulk_delete_max (optional)
        - expander (optional)
        - ignore_daemonsets_utilization_enabled (optional)
        - max_graceful_termination_sec (optional)
        - max_node_provisioning_time (optional)
        - max_unready_nodes (optional)
        - max_unready_percentage (optional)
        - new_pod_scale_up_delay (optional)
        - scale_down_delay_after_add (optional)
        - scale_down_delay_after_delete (optional)
        - scale_down_delay_after_failure (optional)
        - scale_down_unneeded (optional)
        - scale_down_unready (optional)
        - scale_down_utilization_threshold (optional)
        - scan_interval (optional)
        - skip_nodes_with_local_storage (optional)
        - skip_nodes_with_system_pods (optional)
    - azure_active_directory_role_based_access_control (block):
        - admin_group_object_ids (optional)
        - azure_rbac_enabled (optional)
        - tenant_id (optional)
    - bootstrap_profile (block):
        - artifact_source (optional)
        - container_registry_id (optional)
    - confidential_computing (block):
        - sgx_quote_helper_enabled (required)
    - http_proxy_config (block):
        - http_proxy (optional)
        - https_proxy (optional)
        - no_proxy (optional)
        - trusted_ca (optional)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - ingress_application_gateway (block):
        - gateway_id (optional)
        - gateway_name (optional)
        - subnet_cidr (optional)
        - subnet_id (optional)
    - key_management_service (block):
        - key_vault_key_id (required)
        - key_vault_network_access (optional)
    - key_vault_secrets_provider (block):
        - secret_rotation_enabled (optional)
        - secret_rotation_interval (optional)
    - kubelet_identity (block):
        - client_id (optional)
        - object_id (optional)
        - user_assigned_identity_id (optional)
    - linux_profile (block):
        - admin_username (required)
        - ssh_key (required, block):
            - key_data (required)
    - maintenance_window (block):
        - allowed (optional, block):
            - day (required)
            - hours (required)
        - not_allowed (optional, block):
            - end (required)
            - start (required)
    - maintenance_window_auto_upgrade (block):
        - day_of_month (optional)
        - day_of_week (optional)
        - duration (required)
        - frequency (required)
        - interval (required)
        - not_allowed (optional, block):
            - end (required)
            - start (required)
        - start_date (optional)
        - start_time (optional)
        - utc_offset (optional)
        - week_index (optional)
    - maintenance_window_node_os (block):
        - day_of_month (optional)
        - day_of_week (optional)
        - duration (required)
        - frequency (required)
        - interval (required)
        - not_allowed (optional, block):
            - end (required)
            - start (required)
        - start_date (optional)
        - start_time (optional)
        - utc_offset (optional)
        - week_index (optional)
    - microsoft_defender (block):
        - log_analytics_workspace_id (required)
    - monitor_metrics (block):
        - annotations_allowed (optional)
        - labels_allowed (optional)
    - network_profile (block):
        - advanced_networking (optional, block):
            - observability_enabled (optional)
            - security_enabled (optional)
        - dns_service_ip (optional)
        - ip_versions (optional)
        - load_balancer_profile (optional, block):
            - backend_pool_type (optional)
            - idle_timeout_in_minutes (optional)
            - managed_outbound_ip_count (optional)
            - managed_outbound_ipv6_count (optional)
            - outbound_ip_address_ids (optional)
            - outbound_ip_prefix_ids (optional)
            - outbound_ports_allocated (optional)
        - load_balancer_sku (optional)
        - nat_gateway_profile (optional, block):
            - idle_timeout_in_minutes (optional)
            - managed_outbound_ip_count (optional)
        - network_data_plane (optional)
        - network_mode (optional)
        - network_plugin (required)
        - network_plugin_mode (optional)
        - network_policy (optional)
        - outbound_type (optional)
        - pod_cidr (optional)
        - pod_cidrs (optional)
        - service_cidr (optional)
        - service_cidrs (optional)
    - node_provisioning_profile (block):
        - default_node_pools (optional)
        - mode (optional)
    - oms_agent (block):
        - log_analytics_workspace_id (required)
        - msi_auth_for_monitoring_enabled (optional)
    - service_mesh_profile (block):
        - certificate_authority (optional, block):
            - cert_chain_object_name (required)
            - cert_object_name (required)
            - key_object_name (required)
            - key_vault_id (required)
            - root_cert_object_name (required)
        - external_ingress_gateway_enabled (optional)
        - internal_ingress_gateway_enabled (optional)
        - mode (required)
        - revisions (required)
    - service_principal (block):
        - client_id (required)
        - client_secret (required)
    - storage_profile (block):
        - blob_driver_enabled (optional)
        - disk_driver_enabled (optional)
        - file_driver_enabled (optional)
        - snapshot_controller_enabled (optional)
    - upgrade_override (block):
        - effective_until (optional)
        - force_upgrade_enabled (required)
    - web_app_routing (block):
        - default_nginx_controller (optional)
        - dns_zone_ids (required)
    - windows_profile (block):
        - admin_password (required)
        - admin_username (required)
        - gmsa (optional, block):
            - dns_server (required)
            - root_domain (required)
        - license (optional)
    - workload_autoscaler_profile (block):
        - keda_enabled (optional)
        - vertical_pod_autoscaler_enabled (optional)
EOT

  type = map(object({
    location                            = string
    name                                = string
    resource_group_name                 = string
    support_plan                        = optional(string) # Default: "KubernetesOfficial"
    sku_tier                            = optional(string) # Default: "Free"
    run_command_enabled                 = optional(bool)   # Default: true
    role_based_access_control_enabled   = optional(bool)   # Default: true
    private_dns_zone_id                 = optional(string)
    private_cluster_public_fqdn_enabled = optional(bool) # Default: false
    private_cluster_enabled             = optional(bool) # Default: false
    open_service_mesh_enabled           = optional(bool)
    oidc_issuer_enabled                 = optional(bool)
    node_resource_group                 = optional(string)
    node_os_upgrade_channel             = optional(string) # Default: "NodeImage"
    local_account_disabled              = optional(bool)
    image_cleaner_interval_hours        = optional(number)
    tags                                = optional(map(string))
    image_cleaner_enabled               = optional(bool)
    http_application_routing_enabled    = optional(bool)
    edge_zone                           = optional(string)
    dns_prefix_private_cluster          = optional(string)
    dns_prefix                          = optional(string)
    disk_encryption_set_id              = optional(string)
    custom_ca_trust_certificates_base64 = optional(list(string))
    cost_analysis_enabled               = optional(bool)
    azure_policy_enabled                = optional(bool)
    automatic_upgrade_channel           = optional(string)
    ai_toolchain_operator_enabled       = optional(bool) # Default: false
    kubernetes_version                  = optional(string)
    workload_identity_enabled           = optional(bool) # Default: false
    default_node_pool = object({
      auto_scaling_enabled          = optional(bool)
      capacity_reservation_group_id = optional(string)
      fips_enabled                  = optional(bool)
      gpu_driver                    = optional(string)
      gpu_instance                  = optional(string)
      host_encryption_enabled       = optional(bool)
      host_group_id                 = optional(string)
      kubelet_config = optional(object({
        allowed_unsafe_sysctls    = optional(set(string))
        container_log_max_line    = optional(number)
        container_log_max_size_mb = optional(number)
        cpu_cfs_quota_enabled     = optional(bool) # Default: true
        cpu_cfs_quota_period      = optional(string)
        cpu_manager_policy        = optional(string)
        image_gc_high_threshold   = optional(number)
        image_gc_low_threshold    = optional(number)
        pod_max_pid               = optional(number)
        topology_manager_policy   = optional(string)
      }))
      kubelet_disk_type = optional(string)
      linux_os_config = optional(object({
        swap_file_size_mb = optional(number)
        sysctl_config = optional(object({
          fs_aio_max_nr                      = optional(number)
          fs_file_max                        = optional(number)
          fs_inotify_max_user_watches        = optional(number)
          fs_nr_open                         = optional(number)
          kernel_threads_max                 = optional(number)
          net_core_netdev_max_backlog        = optional(number)
          net_core_optmem_max                = optional(number)
          net_core_rmem_default              = optional(number)
          net_core_rmem_max                  = optional(number)
          net_core_somaxconn                 = optional(number)
          net_core_wmem_default              = optional(number)
          net_core_wmem_max                  = optional(number)
          net_ipv4_ip_local_port_range_max   = optional(number)
          net_ipv4_ip_local_port_range_min   = optional(number)
          net_ipv4_neigh_default_gc_thresh1  = optional(number)
          net_ipv4_neigh_default_gc_thresh2  = optional(number)
          net_ipv4_neigh_default_gc_thresh3  = optional(number)
          net_ipv4_tcp_fin_timeout           = optional(number)
          net_ipv4_tcp_keepalive_intvl       = optional(number)
          net_ipv4_tcp_keepalive_probes      = optional(number)
          net_ipv4_tcp_keepalive_time        = optional(number)
          net_ipv4_tcp_max_syn_backlog       = optional(number)
          net_ipv4_tcp_max_tw_buckets        = optional(number)
          net_ipv4_tcp_tw_reuse              = optional(bool)
          net_netfilter_nf_conntrack_buckets = optional(number)
          net_netfilter_nf_conntrack_max     = optional(number)
          vm_max_map_count                   = optional(number)
          vm_swappiness                      = optional(number)
          vm_vfs_cache_pressure              = optional(number)
        }))
        transparent_huge_page         = optional(string)
        transparent_huge_page_defrag  = optional(string)
        transparent_huge_page_enabled = optional(string)
      }))
      max_count   = optional(number)
      max_pods    = optional(number)
      min_count   = optional(number)
      name        = string
      node_count  = optional(number)
      node_labels = optional(map(string))
      node_network_profile = optional(object({
        allowed_host_ports = optional(object({
          port_end   = optional(number)
          port_start = optional(number)
          protocol   = optional(string)
        }))
        application_security_group_ids = optional(list(string))
        node_public_ip_tags            = optional(map(string))
      }))
      node_public_ip_enabled       = optional(bool)
      node_public_ip_prefix_id     = optional(string)
      only_critical_addons_enabled = optional(bool)
      orchestrator_version         = optional(string)
      os_disk_size_gb              = optional(number)
      os_disk_type                 = optional(string) # Default: "Managed"
      os_sku                       = optional(string)
      pod_subnet_id                = optional(string)
      proximity_placement_group_id = optional(string)
      scale_down_mode              = optional(string) # Default: "Delete"
      snapshot_id                  = optional(string)
      tags                         = optional(map(string))
      temporary_name_for_rotation  = optional(string)
      type                         = optional(string) # Default: "VirtualMachineScaleSets"
      ultra_ssd_enabled            = optional(bool)   # Default: false
      upgrade_settings = optional(object({
        drain_timeout_in_minutes      = optional(number)
        max_surge                     = string
        node_soak_duration_in_minutes = optional(number)
        undrainable_node_behavior     = optional(string)
      }))
      vm_size          = optional(string)
      vnet_subnet_id   = optional(string)
      workload_runtime = optional(string)
      zones            = optional(set(string))
    })
    web_app_routing = optional(object({
      default_nginx_controller = optional(string) # Default: "AnnotationControlled"
      dns_zone_ids             = list(string)
    }))
    upgrade_override = optional(object({
      effective_until       = optional(string)
      force_upgrade_enabled = bool
    }))
    storage_profile = optional(object({
      blob_driver_enabled         = optional(bool) # Default: false
      disk_driver_enabled         = optional(bool) # Default: true
      file_driver_enabled         = optional(bool) # Default: true
      snapshot_controller_enabled = optional(bool) # Default: true
    }))
    service_principal = optional(object({
      client_id     = string
      client_secret = string
    }))
    service_mesh_profile = optional(object({
      certificate_authority = optional(object({
        cert_chain_object_name = string
        cert_object_name       = string
        key_object_name        = string
        key_vault_id           = string
        root_cert_object_name  = string
      }))
      external_ingress_gateway_enabled = optional(bool)
      internal_ingress_gateway_enabled = optional(bool)
      mode                             = string
      revisions                        = list(string)
    }))
    oms_agent = optional(object({
      log_analytics_workspace_id      = string
      msi_auth_for_monitoring_enabled = optional(bool)
    }))
    node_provisioning_profile = optional(object({
      default_node_pools = optional(string) # Default: "Auto"
      mode               = optional(string) # Default: "Manual"
    }))
    network_profile = optional(object({
      advanced_networking = optional(object({
        observability_enabled = optional(bool) # Default: false
        security_enabled      = optional(bool) # Default: false
      }))
      dns_service_ip = optional(string)
      ip_versions    = optional(list(string))
      load_balancer_profile = optional(object({
        backend_pool_type           = optional(string) # Default: "NodeIPConfiguration"
        idle_timeout_in_minutes     = optional(number) # Default: 30
        managed_outbound_ip_count   = optional(number)
        managed_outbound_ipv6_count = optional(number)
        outbound_ip_address_ids     = optional(set(string))
        outbound_ip_prefix_ids      = optional(set(string))
        outbound_ports_allocated    = optional(number) # Default: 0
      }))
      load_balancer_sku = optional(string) # Default: "standard"
      nat_gateway_profile = optional(object({
        idle_timeout_in_minutes   = optional(number) # Default: 4
        managed_outbound_ip_count = optional(number)
      }))
      network_data_plane  = optional(string) # Default: "azure"
      network_mode        = optional(string)
      network_plugin      = string
      network_plugin_mode = optional(string)
      network_policy      = optional(string)
      outbound_type       = optional(string) # Default: "loadBalancer"
      pod_cidr            = optional(string)
      pod_cidrs           = optional(list(string))
      service_cidr        = optional(string)
      service_cidrs       = optional(list(string))
    }))
    monitor_metrics = optional(object({
      annotations_allowed = optional(string)
      labels_allowed      = optional(string)
    }))
    microsoft_defender = optional(object({
      log_analytics_workspace_id = string
    }))
    maintenance_window_node_os = optional(object({
      day_of_month = optional(number)
      day_of_week  = optional(string)
      duration     = number
      frequency    = string
      interval     = number
      not_allowed = optional(object({
        end   = string
        start = string
      }))
      start_date = optional(string)
      start_time = optional(string)
      utc_offset = optional(string)
      week_index = optional(string)
    }))
    maintenance_window_auto_upgrade = optional(object({
      day_of_month = optional(number)
      day_of_week  = optional(string)
      duration     = number
      frequency    = string
      interval     = number
      not_allowed = optional(object({
        end   = string
        start = string
      }))
      start_date = optional(string)
      start_time = optional(string)
      utc_offset = optional(string)
      week_index = optional(string)
    }))
    windows_profile = optional(object({
      admin_password = string
      admin_username = string
      gmsa = optional(object({
        dns_server  = string
        root_domain = string
      }))
      license = optional(string)
    }))
    maintenance_window = optional(object({
      allowed = optional(object({
        day   = string
        hours = set(number)
      }))
      not_allowed = optional(object({
        end   = string
        start = string
      }))
    }))
    kubelet_identity = optional(object({
      client_id                 = optional(string)
      object_id                 = optional(string)
      user_assigned_identity_id = optional(string)
    }))
    key_vault_secrets_provider = optional(object({
      secret_rotation_enabled  = optional(bool)   # Default: false
      secret_rotation_interval = optional(string) # Default: "2m"
    }))
    key_management_service = optional(object({
      key_vault_key_id         = string
      key_vault_network_access = optional(string) # Default: "Public"
    }))
    ingress_application_gateway = optional(object({
      gateway_id   = optional(string)
      gateway_name = optional(string)
      subnet_cidr  = optional(string)
      subnet_id    = optional(string)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    http_proxy_config = optional(object({
      http_proxy  = optional(string)
      https_proxy = optional(string)
      no_proxy    = optional(set(string))
      trusted_ca  = optional(string)
    }))
    confidential_computing = optional(object({
      sgx_quote_helper_enabled = bool
    }))
    bootstrap_profile = optional(object({
      artifact_source       = optional(string) # Default: "Direct"
      container_registry_id = optional(string)
    }))
    azure_active_directory_role_based_access_control = optional(object({
      admin_group_object_ids = optional(list(string))
      azure_rbac_enabled     = optional(bool)
      tenant_id              = optional(string)
    }))
    auto_scaler_profile = optional(object({
      balance_similar_node_groups                   = optional(bool) # Default: false
      daemonset_eviction_for_empty_nodes_enabled    = optional(bool) # Default: false
      daemonset_eviction_for_occupied_nodes_enabled = optional(bool) # Default: true
      empty_bulk_delete_max                         = optional(string)
      expander                                      = optional(string) # Default: "random"
      ignore_daemonsets_utilization_enabled         = optional(bool)   # Default: false
      max_graceful_termination_sec                  = optional(string)
      max_node_provisioning_time                    = optional(string) # Default: "15m"
      max_unready_nodes                             = optional(number) # Default: 3
      max_unready_percentage                        = optional(number) # Default: 45
      new_pod_scale_up_delay                        = optional(string)
      scale_down_delay_after_add                    = optional(string)
      scale_down_delay_after_delete                 = optional(string)
      scale_down_delay_after_failure                = optional(string)
      scale_down_unneeded                           = optional(string)
      scale_down_unready                            = optional(string)
      scale_down_utilization_threshold              = optional(string)
      scan_interval                                 = optional(string)
      skip_nodes_with_local_storage                 = optional(bool)
      skip_nodes_with_system_pods                   = optional(bool) # Default: true
    }))
    api_server_access_profile = optional(object({
      authorized_ip_ranges                = optional(set(string))
      subnet_id                           = optional(string)
      virtual_network_integration_enabled = optional(bool) # Default: false
    }))
    aci_connector_linux = optional(object({
      subnet_name = string
    }))
    linux_profile = optional(object({
      admin_username = string
      ssh_key = object({
        key_data = string
      })
    }))
    workload_autoscaler_profile = optional(object({
      keda_enabled                    = optional(bool) # Default: false
      vertical_pod_autoscaler_enabled = optional(bool) # Default: false
    }))
  }))
}

