# Terraform Accounts

resource "aws_organizations_account" "terraform" {
  name      = "TerraformStateAccount"
  email     = "a.marquezperez+TerraformStateAccount@icloud.com"
  parent_id = aws_organizations_organizational_unit.terraform.id
  role_name = "OrganizationAccountAccessRole"
}

resource "aws_organizations_account" "policy_staging_terraform" {
  name      = "PolicyStagingTerraformAccount"
  email     = "a.marquezperez+PolicyStagingTerraformAccount@icloud.com"
  parent_id = aws_organizations_organizational_unit.policy_staging_terraform.id
  role_name = "OrganizationAccountAccessRole"
}