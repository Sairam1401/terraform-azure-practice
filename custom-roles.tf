provider "azurerm" {
  features {}
}

data "azurerm_subscription" "current" {}

# Define the custom roles to create. 
# Each block under 'custom_role_definitions' will create a specific role.

module "custom_role" {
  for_each = { for idx, role in local.custom_role_definitions : idx => role }
  source   = "./module/terraform-azure-custom-role-definition/"

  role_name              = each.value.rolename
  role_scope             = data.azurerm_subscription.current.id
  role_assignable_scopes = [data.azurerm_subscription.current.id]
  role_definition = {
    description = each.value.description
    permissions = each.value.permissions[0]
  }
}
