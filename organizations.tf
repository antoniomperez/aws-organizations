data "aws_organizations_organization" "org" {}

# Security OU
resource "aws_organizations_organizational_unit" "security" {
  name      = "Security"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

# Infrastructure OU
resource "aws_organizations_organizational_unit" "infrastructure" {
  name      = "Infrastructure"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

# Sandbox OU
resource "aws_organizations_organizational_unit" "sandbox" {
  name      = "Sanbox"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

# Workloads OU
resource "aws_organizations_organizational_unit" "workloads" {
  name      = "Workloads"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

# Policy Staging OU
resource "aws_organizations_organizational_unit" "policy_staging" {
  name      = "Policy Staging"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "policy_staging_security" {
  name      = "Security"
  parent_id = aws_organizations_organizational_unit.policy_staging.id
}

resource "aws_organizations_organizational_unit" "policy_staging_infrastructure" {
  name      = "Infrastructure"
  parent_id = aws_organizations_organizational_unit.policy_staging.id
}

resource "aws_organizations_organizational_unit" "policy_staging_workloads" {
  name      = "Workloads"
  parent_id = aws_organizations_organizational_unit.policy_staging.id
}

resource "aws_organizations_organizational_unit" "policy_staging_deployments" {
  name      = "Deployments"
  parent_id = aws_organizations_organizational_unit.policy_staging.id
}

resource "aws_organizations_organizational_unit" "policy_staging_suspended" {
  name      = "Suspended"
  parent_id = aws_organizations_organizational_unit.policy_staging.id
}

resource "aws_organizations_organizational_unit" "policy_staging_terraform" {
  name      = "Terraform"
  parent_id = aws_organizations_organizational_unit.policy_staging.id
}

# Suspended OU
resource "aws_organizations_organizational_unit" "suspended" {
  name      = "Suspended"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

# Deployments OU

resource "aws_organizations_organizational_unit" "deployments" {
  name      = "Deployments"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

# Terraform OU
resource "aws_organizations_organizational_unit" "terraform" {
  name      = "Terraform"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}