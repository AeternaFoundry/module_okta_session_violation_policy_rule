output "session_violation_policy_rules_id" {
  description = "Map of id values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.id }
}
output "session_violation_policy_rules_min_risk_level" {
  description = "Map of min_risk_level values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.min_risk_level }
}
output "session_violation_policy_rules_name" {
  description = "Map of name values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.name }
}
output "session_violation_policy_rules_network_connection" {
  description = "Map of network_connection values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.network_connection }
}
output "session_violation_policy_rules_network_excludes" {
  description = "Map of network_excludes values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.network_excludes }
}
output "session_violation_policy_rules_network_includes" {
  description = "Map of network_includes values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.network_includes }
}
output "session_violation_policy_rules_policy_evaluation_enabled" {
  description = "Map of policy_evaluation_enabled values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.policy_evaluation_enabled }
}
output "session_violation_policy_rules_policy_id" {
  description = "Map of policy_id values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.policy_id }
}
output "session_violation_policy_rules_priority" {
  description = "Map of priority values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.priority }
}
output "session_violation_policy_rules_status" {
  description = "Map of status values across all session_violation_policy_rules, keyed the same as var.session_violation_policy_rules"
  value       = { for k, v in okta_session_violation_policy_rule.session_violation_policy_rules : k => v.status }
}

