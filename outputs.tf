output "sentinel_data_connector_office_365s" {
  description = "All sentinel_data_connector_office_365 resources"
  value       = azurerm_sentinel_data_connector_office_365.sentinel_data_connector_office_365s
}
output "sentinel_data_connector_office_365s_exchange_enabled" {
  description = "List of exchange_enabled values across all sentinel_data_connector_office_365s"
  value       = [for k, v in azurerm_sentinel_data_connector_office_365.sentinel_data_connector_office_365s : v.exchange_enabled]
}
output "sentinel_data_connector_office_365s_log_analytics_workspace_id" {
  description = "List of log_analytics_workspace_id values across all sentinel_data_connector_office_365s"
  value       = [for k, v in azurerm_sentinel_data_connector_office_365.sentinel_data_connector_office_365s : v.log_analytics_workspace_id]
}
output "sentinel_data_connector_office_365s_name" {
  description = "List of name values across all sentinel_data_connector_office_365s"
  value       = [for k, v in azurerm_sentinel_data_connector_office_365.sentinel_data_connector_office_365s : v.name]
}
output "sentinel_data_connector_office_365s_sharepoint_enabled" {
  description = "List of sharepoint_enabled values across all sentinel_data_connector_office_365s"
  value       = [for k, v in azurerm_sentinel_data_connector_office_365.sentinel_data_connector_office_365s : v.sharepoint_enabled]
}
output "sentinel_data_connector_office_365s_teams_enabled" {
  description = "List of teams_enabled values across all sentinel_data_connector_office_365s"
  value       = [for k, v in azurerm_sentinel_data_connector_office_365.sentinel_data_connector_office_365s : v.teams_enabled]
}
output "sentinel_data_connector_office_365s_tenant_id" {
  description = "List of tenant_id values across all sentinel_data_connector_office_365s"
  value       = [for k, v in azurerm_sentinel_data_connector_office_365.sentinel_data_connector_office_365s : v.tenant_id]
}

