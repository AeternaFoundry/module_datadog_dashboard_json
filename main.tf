resource "datadog_dashboard_json" "dashboard_jsons" {
  for_each = var.dashboard_jsons

  dashboard       = each.value.dashboard
  dashboard_lists = each.value.dashboard_lists
  url             = each.value.url
}

