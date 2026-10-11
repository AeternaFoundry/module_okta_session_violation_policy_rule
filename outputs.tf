output "session_violation_policy_rules_id" {
  description = "Map of id values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules except keys with no id are omitted"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "session_violation_policy_rules_min_risk_level" {
  description = "Map of min_risk_level values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules except keys with no min_risk_level are omitted"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.min_risk_level if v.min_risk_level != null && length(v.min_risk_level) > 0 }
}
output "session_violation_policy_rules_name" {
  description = "Map of name values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules except keys with no name are omitted"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "session_violation_policy_rules_network_connection" {
  description = "Map of network_connection values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules except keys with no network_connection are omitted"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.network_connection if v.network_connection != null && length(v.network_connection) > 0 }
}
output "session_violation_policy_rules_network_excludes" {
  description = "Map of network_excludes values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules except keys with no network_excludes are omitted"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.network_excludes if v.network_excludes != null && length(v.network_excludes) > 0 }
}
output "session_violation_policy_rules_network_includes" {
  description = "Map of network_includes values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules except keys with no network_includes are omitted"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.network_includes if v.network_includes != null && length(v.network_includes) > 0 }
}
output "session_violation_policy_rules_policy_evaluation_enabled" {
  description = "Map of policy_evaluation_enabled values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules except keys with no policy_evaluation_enabled are omitted"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.policy_evaluation_enabled if v.policy_evaluation_enabled != null }
}
output "session_violation_policy_rules_policy_id" {
  description = "Map of policy_id values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules except keys with no policy_id are omitted"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.policy_id if v.policy_id != null && length(v.policy_id) > 0 }
}
output "session_violation_policy_rules_priority" {
  description = "Map of priority values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules except keys with no priority are omitted"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.priority if v.priority != null }
}
output "session_violation_policy_rules_status" {
  description = "Map of status values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules except keys with no status are omitted"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.status if v.status != null && length(v.status) > 0 }
}

