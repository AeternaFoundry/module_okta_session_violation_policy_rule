resource "okta_session_violation_policy_rule" "session_violation_policy_rules" {
  for_each = var.session_violation_policy_rules

  min_risk_level            = each.value.min_risk_level
  policy_id                 = each.value.policy_id
  name                      = each.value.name
  network_connection        = each.value.network_connection
  network_excludes          = each.value.network_excludes
  network_includes          = each.value.network_includes
  policy_evaluation_enabled = each.value.policy_evaluation_enabled
  priority                  = each.value.priority
  status                    = each.value.status
}

