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
            - container_log_max_files (optional)
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
    support_plan                        = optional(string)
    sku_tier                            = optional(string)
    run_command_enabled                 = optional(bool)
    role_based_access_control_enabled   = optional(bool)
    private_dns_zone_id                 = optional(string)
    private_cluster_public_fqdn_enabled = optional(bool)
    private_cluster_enabled             = optional(bool)
    open_service_mesh_enabled           = optional(bool)
    oidc_issuer_enabled                 = optional(bool)
    node_resource_group                 = optional(string)
    node_os_upgrade_channel             = optional(string)
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
    ai_toolchain_operator_enabled       = optional(bool)
    kubernetes_version                  = optional(string)
    workload_identity_enabled           = optional(bool)
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
        container_log_max_files   = optional(number)
        container_log_max_line    = optional(number)
        container_log_max_size_mb = optional(number)
        cpu_cfs_quota_enabled     = optional(bool)
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
        allowed_host_ports = optional(list(object({
          port_end   = optional(number)
          port_start = optional(number)
          protocol   = optional(string)
        })))
        application_security_group_ids = optional(list(string))
        node_public_ip_tags            = optional(map(string))
      }))
      node_public_ip_enabled       = optional(bool)
      node_public_ip_prefix_id     = optional(string)
      only_critical_addons_enabled = optional(bool)
      orchestrator_version         = optional(string)
      os_disk_size_gb              = optional(number)
      os_disk_type                 = optional(string)
      os_sku                       = optional(string)
      pod_subnet_id                = optional(string)
      proximity_placement_group_id = optional(string)
      scale_down_mode              = optional(string)
      snapshot_id                  = optional(string)
      tags                         = optional(map(string))
      temporary_name_for_rotation  = optional(string)
      type                         = optional(string)
      ultra_ssd_enabled            = optional(bool)
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
      default_nginx_controller = optional(string)
      dns_zone_ids             = list(string)
    }))
    upgrade_override = optional(object({
      effective_until       = optional(string)
      force_upgrade_enabled = bool
    }))
    storage_profile = optional(object({
      blob_driver_enabled         = optional(bool)
      disk_driver_enabled         = optional(bool)
      file_driver_enabled         = optional(bool)
      snapshot_controller_enabled = optional(bool)
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
      default_node_pools = optional(string)
      mode               = optional(string)
    }))
    network_profile = optional(object({
      advanced_networking = optional(object({
        observability_enabled = optional(bool)
        security_enabled      = optional(bool)
      }))
      dns_service_ip = optional(string)
      ip_versions    = optional(list(string))
      load_balancer_profile = optional(object({
        backend_pool_type           = optional(string)
        idle_timeout_in_minutes     = optional(number)
        managed_outbound_ip_count   = optional(number)
        managed_outbound_ipv6_count = optional(number)
        outbound_ip_address_ids     = optional(set(string))
        outbound_ip_prefix_ids      = optional(set(string))
        outbound_ports_allocated    = optional(number)
      }))
      load_balancer_sku = optional(string)
      nat_gateway_profile = optional(object({
        idle_timeout_in_minutes   = optional(number)
        managed_outbound_ip_count = optional(number)
      }))
      network_data_plane  = optional(string)
      network_mode        = optional(string)
      network_plugin      = string
      network_plugin_mode = optional(string)
      network_policy      = optional(string)
      outbound_type       = optional(string)
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
      not_allowed = optional(list(object({
        end   = string
        start = string
      })))
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
      not_allowed = optional(list(object({
        end   = string
        start = string
      })))
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
      allowed = optional(list(object({
        day   = string
        hours = set(number)
      })))
      not_allowed = optional(list(object({
        end   = string
        start = string
      })))
    }))
    kubelet_identity = optional(object({
      client_id                 = optional(string)
      object_id                 = optional(string)
      user_assigned_identity_id = optional(string)
    }))
    key_vault_secrets_provider = optional(object({
      secret_rotation_enabled  = optional(bool)
      secret_rotation_interval = optional(string)
    }))
    key_management_service = optional(object({
      key_vault_key_id         = string
      key_vault_network_access = optional(string)
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
      artifact_source       = optional(string)
      container_registry_id = optional(string)
    }))
    azure_active_directory_role_based_access_control = optional(object({
      admin_group_object_ids = optional(list(string))
      azure_rbac_enabled     = optional(bool)
      tenant_id              = optional(string)
    }))
    auto_scaler_profile = optional(object({
      balance_similar_node_groups                   = optional(bool)
      daemonset_eviction_for_empty_nodes_enabled    = optional(bool)
      daemonset_eviction_for_occupied_nodes_enabled = optional(bool)
      empty_bulk_delete_max                         = optional(string)
      expander                                      = optional(string)
      ignore_daemonsets_utilization_enabled         = optional(bool)
      max_graceful_termination_sec                  = optional(string)
      max_node_provisioning_time                    = optional(string)
      max_unready_nodes                             = optional(number)
      max_unready_percentage                        = optional(number)
      new_pod_scale_up_delay                        = optional(string)
      scale_down_delay_after_add                    = optional(string)
      scale_down_delay_after_delete                 = optional(string)
      scale_down_delay_after_failure                = optional(string)
      scale_down_unneeded                           = optional(string)
      scale_down_unready                            = optional(string)
      scale_down_utilization_threshold              = optional(string)
      scan_interval                                 = optional(string)
      skip_nodes_with_local_storage                 = optional(bool)
      skip_nodes_with_system_pods                   = optional(bool)
    }))
    api_server_access_profile = optional(object({
      authorized_ip_ranges                = optional(set(string))
      subnet_id                           = optional(string)
      virtual_network_integration_enabled = optional(bool)
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
      keda_enabled                    = optional(bool)
      vertical_pod_autoscaler_enabled = optional(bool)
    }))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_kubernetes_cluster's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: api_server_access_profile.authorized_ip_ranges[*]
  #   source:    [from validate.CIDR] re != nil && !re.MatchString(cidr)
  # path: api_server_access_profile.subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: api_server_access_profile.subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: automatic_upgrade_channel
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: auto_scaler_profile.expander
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: auto_scaler_profile.max_node_provisioning_time
  #   source:    [from containerValidate.Duration] err != nil
  # path: auto_scaler_profile.max_node_provisioning_time
  #   source:    [from containerValidate.Duration] duration < 0
  # path: auto_scaler_profile.max_unready_nodes
  #   condition: value >= 0
  #   message:   must be at least 0
  # path: auto_scaler_profile.max_unready_percentage
  #   source:    validation.FloatBetween(...) - no translation rule yet, add one
  # path: auto_scaler_profile.new_pod_scale_up_delay
  #   source:    [from containerValidate.Duration] err != nil
  # path: auto_scaler_profile.new_pod_scale_up_delay
  #   source:    [from containerValidate.Duration] duration < 0
  # path: auto_scaler_profile.scan_interval
  #   source:    [from containerValidate.Duration] err != nil
  # path: auto_scaler_profile.scan_interval
  #   source:    [from containerValidate.Duration] duration < 0
  # path: auto_scaler_profile.scale_down_delay_after_add
  #   source:    [from containerValidate.Duration] err != nil
  # path: auto_scaler_profile.scale_down_delay_after_add
  #   source:    [from containerValidate.Duration] duration < 0
  # path: auto_scaler_profile.scale_down_delay_after_delete
  #   source:    [from containerValidate.Duration] err != nil
  # path: auto_scaler_profile.scale_down_delay_after_delete
  #   source:    [from containerValidate.Duration] duration < 0
  # path: auto_scaler_profile.scale_down_delay_after_failure
  #   source:    [from containerValidate.Duration] err != nil
  # path: auto_scaler_profile.scale_down_delay_after_failure
  #   source:    [from containerValidate.Duration] duration < 0
  # path: auto_scaler_profile.scale_down_unneeded
  #   source:    [from containerValidate.Duration] err != nil
  # path: auto_scaler_profile.scale_down_unneeded
  #   source:    [from containerValidate.Duration] duration < 0
  # path: auto_scaler_profile.scale_down_unready
  #   source:    [from containerValidate.Duration] err != nil
  # path: auto_scaler_profile.scale_down_unready
  #   source:    [from containerValidate.Duration] duration < 0
  # path: azure_active_directory_role_based_access_control.tenant_id
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: azure_active_directory_role_based_access_control.admin_group_object_ids[*]
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: custom_ca_trust_certificates_base64[*]
  #   source:    validation.StringIsBase64(...) - no translation rule yet, add one
  # path: disk_encryption_set_id
  #   source:    [from computeValidate.DiskEncryptionSetID] !ok
  # path: disk_encryption_set_id
  #   source:    [from computeValidate.DiskEncryptionSetID] err != nil
  # path: dns_prefix
  #   condition: length(value) >= 2
  #   message:   [from containerValidate.KubernetesDNSPrefix: invalid when len(value) < 2]
  #   source:    [from containerValidate.KubernetesDNSPrefix: invalid when len(value) < 2]
  # path: dns_prefix
  #   source:    [from containerValidate.KubernetesDNSPrefix] re != nil && !re.MatchString(dnsPrefix)
  # path: dns_prefix
  #   source:    [from containerValidate.KubernetesDNSPrefix] re != nil && !re.MatchString(dnsPrefix)
  # path: edge_zone
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: image_cleaner_interval_hours
  #   condition: value >= 24 && value <= 2160
  #   message:   must be between 24 and 2160
  # path: web_app_routing.dns_zone_ids[*]
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: web_app_routing.default_nginx_controller
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: kubelet_identity.client_id
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: kubelet_identity.object_id
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: kubelet_identity.user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: kubelet_identity.user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: kubernetes_version
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: linux_profile.admin_username
  #   source:    [from containerValidate.KubernetesAdminUserName] re != nil && !re.MatchString(adminUserName)
  # path: linux_profile.ssh_key.key_data
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: bootstrap_profile.artifact_source
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: bootstrap_profile.container_registry_id
  #   source:    [from registries.ValidateRegistryID] !ok
  # path: bootstrap_profile.container_registry_id
  #   source:    [from registries.ValidateRegistryID] err != nil
  # path: maintenance_window.allowed.day
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: maintenance_window.allowed.hours[*]
  #   condition: value >= 0 && value <= 23
  #   message:   must be between 0 and 23
  # path: maintenance_window.not_allowed.end
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: maintenance_window.not_allowed.start
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: maintenance_window_auto_upgrade.frequency
  #   condition: contains(["Daily", "Weekly", "RelativeMonthly", "AbsoluteMonthly"], value)
  #   message:   must be one of: Daily, Weekly, RelativeMonthly, AbsoluteMonthly
  # path: maintenance_window_auto_upgrade.day_of_week
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: maintenance_window_auto_upgrade.duration
  #   condition: value >= 4 && value <= 24
  #   message:   must be between 4 and 24
  # path: maintenance_window_auto_upgrade.week_index
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: maintenance_window_auto_upgrade.day_of_month
  #   condition: value >= 0 && value <= 31
  #   message:   must be between 0 and 31
  # path: maintenance_window_auto_upgrade.not_allowed.end
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: maintenance_window_auto_upgrade.not_allowed.start
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: maintenance_window_node_os.frequency
  #   condition: contains(["Weekly", "RelativeMonthly", "AbsoluteMonthly", "Daily"], value)
  #   message:   must be one of: Weekly, RelativeMonthly, AbsoluteMonthly, Daily
  # path: maintenance_window_node_os.day_of_week
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: maintenance_window_node_os.duration
  #   condition: value >= 4 && value <= 24
  #   message:   must be between 4 and 24
  # path: maintenance_window_node_os.week_index
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: maintenance_window_node_os.day_of_month
  #   condition: value >= 0 && value <= 31
  #   message:   must be between 0 and 31
  # path: maintenance_window_node_os.start_date
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: maintenance_window_node_os.not_allowed.end
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: maintenance_window_node_os.not_allowed.start
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: monitor_metrics.annotations_allowed
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: monitor_metrics.labels_allowed
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_management_service.key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: key_management_service.key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: key_management_service.key_vault_network_access
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: microsoft_defender.log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: microsoft_defender.log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
  # path: network_profile.network_plugin
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_profile.network_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_profile.network_policy
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_profile.dns_service_ip
  #   source:    [from validate.IPv4Address] !ok
  # path: network_profile.dns_service_ip
  #   source:    [from validate.IPv4Address] four == nil
  # path: network_profile.network_data_plane
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_profile.network_plugin_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_profile.pod_cidr
  #   source:    [from validate.CIDR] re != nil && !re.MatchString(cidr)
  # path: network_profile.pod_cidrs[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: network_profile.service_cidr
  #   source:    [from validate.CIDR] re != nil && !re.MatchString(cidr)
  # path: network_profile.service_cidrs[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: network_profile.load_balancer_sku
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_profile.outbound_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_profile.load_balancer_profile.outbound_ports_allocated
  #   condition: value >= 0 && value <= 64000
  #   message:   must be between 0 and 64000
  # path: network_profile.load_balancer_profile.idle_timeout_in_minutes
  #   condition: value >= 4 && value <= 100
  #   message:   must be between 4 and 100
  # path: network_profile.load_balancer_profile.managed_outbound_ip_count
  #   condition: value >= 1 && value <= 100
  #   message:   must be between 1 and 100
  # path: network_profile.load_balancer_profile.managed_outbound_ipv6_count
  #   condition: value >= 1 && value <= 100
  #   message:   must be between 1 and 100
  # path: network_profile.load_balancer_profile.outbound_ip_prefix_ids[*]
  #   source:    [from azure.ValidateResourceID] !ok
  # path: network_profile.load_balancer_profile.outbound_ip_prefix_ids[*]
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: network_profile.load_balancer_profile.outbound_ip_address_ids[*]
  #   source:    [from azure.ValidateResourceID] !ok
  # path: network_profile.load_balancer_profile.outbound_ip_address_ids[*]
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: network_profile.load_balancer_profile.backend_pool_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_profile.nat_gateway_profile.idle_timeout_in_minutes
  #   condition: value >= 4 && value <= 120
  #   message:   must be between 4 and 120
  # path: network_profile.nat_gateway_profile.managed_outbound_ip_count
  #   condition: value >= 1 && value <= 100
  #   message:   must be between 1 and 100
  # path: network_profile.ip_versions[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: node_os_upgrade_channel
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: private_dns_zone_id
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: service_mesh_profile.mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: service_mesh_profile.certificate_authority.key_vault_id
  #   source:    [from validationFunctionForResourceID] !ok
  # path: service_mesh_profile.certificate_authority.key_vault_id
  #   source:    [from validationFunctionForResourceID] err != nil
  # path: service_mesh_profile.certificate_authority.root_cert_object_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: service_mesh_profile.certificate_authority.cert_chain_object_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: service_mesh_profile.certificate_authority.cert_object_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: service_mesh_profile.certificate_authority.key_object_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: service_mesh_profile.revisions[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: service_principal.client_id
  #   source:    containerValidate.ClientID: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: service_principal.client_secret
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: sku_tier
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: support_plan
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
  # path: upgrade_override.effective_until
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: windows_profile.admin_password
  #   condition: length(value) >= 8 && length(value) <= 123
  #   message:   must be between 8 and 123 characters
  # path: windows_profile.license
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: node_provisioning_profile.mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: node_provisioning_profile.default_node_pools
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

