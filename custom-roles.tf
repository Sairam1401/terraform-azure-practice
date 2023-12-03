provider "azurerm" {
  features {}
}

data "azurerm_subscription" "current" {}

# Define the custom roles to create. 
# Each block under 'custom_role_definitions' will create a specific role.

module "custom_role" {
  for_each = local.custom_role_definitions
  source   = "./module/terraform-azure-custom-role-definition/"

  role_name              = each.key
  role_scope             = data.azurerm_subscription.current.id
  role_assignable_scopes = [data.azurerm_subscription.current.id]
  role_definition        = each.value
}
