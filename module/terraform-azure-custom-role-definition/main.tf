resource "azurerm_role_definition" "custom_role" {
  name        = var.role_name
  scope       = var.role_scope
  description = var.role_description

  permissions {
    actions          = lookup(var.role_permissions, "actions", [])
    not_actions      = lookup(var.role_permissions, "notActions", [])
    data_actions     = lookup(var.role_permissions, "dataActions", [])
    not_data_actions = lookup(var.role_permissions, "notDataActions", [])
  }
  assignable_scopes = var.role_assignable_scopes
}

/*
output "id" {
  value = tomap({for k, v in azurerm_role_definition.custom_role : k => v.id})
}
*/