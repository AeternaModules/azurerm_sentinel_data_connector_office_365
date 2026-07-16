output "sentinel_data_connector_office_365s_id" {
  description = "Map of id values across all sentinel_data_connector_office_365s, keyed the same as var.sentinel_data_connector_office_365s"
  value       = { for k, v in azurerm_sentinel_data_connector_office_365.sentinel_data_connector_office_365s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sentinel_data_connector_office_365s_exchange_enabled" {
  description = "Map of exchange_enabled values across all sentinel_data_connector_office_365s, keyed the same as var.sentinel_data_connector_office_365s"
  value       = { for k, v in azurerm_sentinel_data_connector_office_365.sentinel_data_connector_office_365s : k => v.exchange_enabled if v.exchange_enabled != null }
}
output "sentinel_data_connector_office_365s_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all sentinel_data_connector_office_365s, keyed the same as var.sentinel_data_connector_office_365s"
  value       = { for k, v in azurerm_sentinel_data_connector_office_365.sentinel_data_connector_office_365s : k => v.log_analytics_workspace_id if v.log_analytics_workspace_id != null && length(v.log_analytics_workspace_id) > 0 }
}
output "sentinel_data_connector_office_365s_name" {
  description = "Map of name values across all sentinel_data_connector_office_365s, keyed the same as var.sentinel_data_connector_office_365s"
  value       = { for k, v in azurerm_sentinel_data_connector_office_365.sentinel_data_connector_office_365s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sentinel_data_connector_office_365s_sharepoint_enabled" {
  description = "Map of sharepoint_enabled values across all sentinel_data_connector_office_365s, keyed the same as var.sentinel_data_connector_office_365s"
  value       = { for k, v in azurerm_sentinel_data_connector_office_365.sentinel_data_connector_office_365s : k => v.sharepoint_enabled if v.sharepoint_enabled != null }
}
output "sentinel_data_connector_office_365s_teams_enabled" {
  description = "Map of teams_enabled values across all sentinel_data_connector_office_365s, keyed the same as var.sentinel_data_connector_office_365s"
  value       = { for k, v in azurerm_sentinel_data_connector_office_365.sentinel_data_connector_office_365s : k => v.teams_enabled if v.teams_enabled != null }
}
output "sentinel_data_connector_office_365s_tenant_id" {
  description = "Map of tenant_id values across all sentinel_data_connector_office_365s, keyed the same as var.sentinel_data_connector_office_365s"
  value       = { for k, v in azurerm_sentinel_data_connector_office_365.sentinel_data_connector_office_365s : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}

