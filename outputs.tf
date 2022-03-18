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

output "ou_policy_staging_id" {
  value = aws_organizations_organizational_unit.policy_staging.id
}

output "ou_suspended_id" {
  value = aws_organizations_organizational_unit.suspended.id
}

output "ou_deployments_id" {
  value = aws_organizations_organizational_unit.deployments.id
}