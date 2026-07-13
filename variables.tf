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
    exchange_enabled           = optional(bool)
    sharepoint_enabled         = optional(bool)
    teams_enabled              = optional(bool)
    tenant_id                  = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.sentinel_data_connector_office_365s : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_data_connector_office_365s : (
        v.tenant_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.tenant_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

