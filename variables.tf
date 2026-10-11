variable "dashboard_jsons" {
  description = <<EOT
Map of dashboard_jsons, attributes below
Required:
    - dashboard
Optional:
    - dashboard_lists
    - url
EOT

  type = map(object({
    dashboard       = string
    dashboard_lists = optional(set(number))
    url             = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.dashboard_jsons : (
        can(jsondecode(v.dashboard))
      )
    ])
    error_message = "must be valid JSON"
  }
}

