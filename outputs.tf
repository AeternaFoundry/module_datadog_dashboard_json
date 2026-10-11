output "dashboard_jsons_id" {
  description = "Map of id values across all dashboard_jsons, keyed the same as var.dashboard_jsons except keys with no id are omitted"
  value       = { for k, v in datadog_dashboard_json.dashboard_jsons : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dashboard_jsons_dashboard" {
  description = "Map of dashboard values across all dashboard_jsons, keyed the same as var.dashboard_jsons except keys with no dashboard are omitted"
  value       = { for k, v in datadog_dashboard_json.dashboard_jsons : k => v.dashboard if v.dashboard != null && length(v.dashboard) > 0 }
}
output "dashboard_jsons_dashboard_lists" {
  description = "Map of dashboard_lists values across all dashboard_jsons, keyed the same as var.dashboard_jsons except keys with no dashboard_lists are omitted"
  value       = { for k, v in datadog_dashboard_json.dashboard_jsons : k => v.dashboard_lists if v.dashboard_lists != null && length(v.dashboard_lists) > 0 }
}
output "dashboard_jsons_dashboard_lists_removed" {
  description = "Map of dashboard_lists_removed values across all dashboard_jsons, keyed the same as var.dashboard_jsons except keys with no dashboard_lists_removed are omitted"
  value       = { for k, v in datadog_dashboard_json.dashboard_jsons : k => v.dashboard_lists_removed if v.dashboard_lists_removed != null && length(v.dashboard_lists_removed) > 0 }
}
output "dashboard_jsons_url" {
  description = "Map of url values across all dashboard_jsons, keyed the same as var.dashboard_jsons except keys with no url are omitted"
  value       = { for k, v in datadog_dashboard_json.dashboard_jsons : k => v.url if v.url != null && length(v.url) > 0 }
}

