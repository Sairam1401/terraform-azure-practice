provider "azurerm" {
  features {}
}

data "azurerm_subscription" "current" {}

# Define the custom roles to create. 
# Each block under 'custom_role_definitions' will create a specific role.
# Module invokes module\terraform-azure-custom-role-definition by looping through values from json file
module "custom_role" {
  for_each = { for idx, role in local.custom_role_definitions : idx => role }
  source   = "./module/terraform-azure-custom-role-definition/"

  role_name              = each.value.rolename
  role_scope             = data.azurerm_subscription.current.id   #Assigning current subscription as scope by default
  role_assignable_scopes = [data.azurerm_subscription.current.id] #Assuming default value here. can be passed from json file also if enhanced
  role_definition = {
    description = each.value.description
    permissions = each.value.permissions[0]
  }
}
