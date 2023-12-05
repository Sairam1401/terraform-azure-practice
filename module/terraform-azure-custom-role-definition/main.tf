# custom-roles.tf module invokes this resource to create custom roles
resource "azurerm_role_definition" "custom_role" {
  name        = var.role_name
  scope       = var.role_scope
  description = var.role_definition.description

  permissions {
    actions          = lookup(var.role_definition.permissions, "actions", [])
    not_actions      = lookup(var.role_definition.permissions, "notActions", [])
    data_actions     = lookup(var.role_definition.permissions, "dataActions", [])
    not_data_actions = lookup(var.role_definition.permissions, "notDataActions", [])
  }
  assignable_scopes = var.role_assignable_scopes
}
