variable "session_violation_policy_rules" {
  description = <<EOT
Map of session_violation_policy_rules, attributes below
Required:
    - min_risk_level
    - policy_id
Optional:
    - name
    - network_connection
    - network_excludes
    - network_includes
    - policy_evaluation_enabled
    - priority
    - status
EOT

  type = map(object({
    min_risk_level            = string
    policy_id                 = string
    name                      = optional(string)
    network_connection        = optional(string)
    network_excludes          = optional(list(string))
    network_includes          = optional(list(string))
    policy_evaluation_enabled = optional(bool)
    priority                  = optional(number)
    status                    = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.session_violation_policy_rules : (
        v.status == null || (contains(["ACTIVE", "INACTIVE"], v.status))
      )
    ])
    error_message = "must be one of: \"ACTIVE\", \"INACTIVE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.session_violation_policy_rules : (
        v.network_connection == null || (contains(["ANYWHERE", "ZONE", "ON_NETWORK", "OFF_NETWORK"], v.network_connection))
      )
    ])
    error_message = "must be one of: \"ANYWHERE\", \"ZONE\", \"ON_NETWORK\", \"OFF_NETWORK\""
  }
  validation {
    condition = alltrue([
      for k, v in var.session_violation_policy_rules : (
        contains(["LOW", "MEDIUM", "HIGH"], v.min_risk_level)
      )
    ])
    error_message = "must be one of: \"LOW\", \"MEDIUM\", \"HIGH\""
  }
}

