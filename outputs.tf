# =============================================================================
# Outputs
# =============================================================================

output "workspace_id" {
  description = "TFC workspace ID"
  value       = tfe_workspace.this.id
}

output "workspace_name" {
  description = "TFC workspace name"
  value       = tfe_workspace.this.name
}

output "workspace_url" {
  description = "Direct URL to the TFC workspace"
  value       = "https://app.terraform.io/app/${var.organization}/workspaces/${tfe_workspace.this.name}"
}

output "variable_set_id" {
  description = "OIDC variable set ID (null when role_arn is not set)"
  value       = var.role_arn != null ? tfe_variable_set.oidc[0].id : null
}
