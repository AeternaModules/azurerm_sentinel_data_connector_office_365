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
  # --- Unconfirmed validation candidates, derived from azurerm_sentinel_data_connector_office_365's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
}

