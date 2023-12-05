#outpus role_id of the custom role created for consuming on other modules
output "role_id" {
  value = azurerm_role_definition.custom_role.id
}
