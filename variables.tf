variable "sentinel_data_connector_office_365s" {
  description = <<EOT
Map of sentinel_data_connector_office_365s, attributes below
Required:
    - log_analytics_workspace_id
    - name
Optional:
    - exchange_enabled
    - sharepoint_enabled
    - teams_enabled
    - tenant_id
EOT

  type = map(object({
    log_analytics_workspace_id = string
    name                       = string
    exchange_enabled           = optional(bool) # Default: true
    sharepoint_enabled         = optional(bool) # Default: true
    teams_enabled              = optional(bool) # Default: true
    tenant_id                  = optional(string)
  }))
}

