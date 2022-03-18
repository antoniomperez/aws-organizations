output "organization_root_id" {
  value = data.aws_organizations_organization.org.roots[0].id
}

output "ou_security_id" {
  value = aws_organizations_organizational_unit.security.id
}

output "ou_infrastructure_id" {
  value = aws_organizations_organizational_unit.infrastructure.id
}

output "ou_sandbox_id" {
  value = aws_organizations_organizational_unit.sandbox.id
}

output "ou_workload_id" {
  value = aws_organizations_organizational_unit.workloads.id
}

# Policy Staging OU Outputs
output "ou_policy_staging_id" {
  value = aws_organizations_organizational_unit.policy_staging.id
}
output "ou_policy_staging_security_id" {
  value = aws_organizations_organizational_unit.policy_staging_security.id
}

output "ou_policy_staging_infrastructure_id" {
  value = aws_organizations_organizational_unit.policy_staging_infrastructure.id
}

output "ou_policy_staging_workloads_id" {
  value = aws_organizations_organizational_unit.policy_staging_workloads.id
}
output "ou_policy_staging_deployments_id" {
  value = aws_organizations_organizational_unit.policy_staging_deployments.id
}

output "ou_policy_staging_suspended_id" {
  value = aws_organizations_organizational_unit.policy_staging_suspended.id
}

output "ou_policy_staging_terraform_id" {
  value = aws_organizations_organizational_unit.policy_staging_terraform.id
}

# Suspended OU Outputs
output "ou_suspended_id" {
  value = aws_organizations_organizational_unit.suspended.id
}

# Deployments OU Outputs
output "ou_deployments_id" {
  value = aws_organizations_organizational_unit.deployments.id
}

# Terraform OU Outputs
output "ou_terraform_id" {
  value = aws_organizations_organizational_unit.terraform.id
}

output "terraform_state_account_id" {
  value = aws_organizations_account.terraform.id
}