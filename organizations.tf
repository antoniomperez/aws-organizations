data "aws_organizations_organization" "org" {}

resource "aws_organizations_organizational_unit" "security" {
  name      = "${var.environment}Security"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "infrastructure" {
  name      = "${var.environment}Infrastructure"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "sandbox" {
  name      = "${var.environment}Sanbox"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "workloads" {
  name      = "${var.environment}Workloads"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "policy_staging" {
  name      = "${var.environment}Policy Staging"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "suspended" {
  name      = "${var.environment}Suspended"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "deployments" {
  name      = "${var.environment}Deployments"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}