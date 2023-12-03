
output "role_id" {
  value = azurerm_role_definition.custom_role.id
}

# output "subscription_id" {
#   value = data.azurerm_subscription.current.id
# }

# /* output "role_ids" {
#   value = {
#     for k, role in module.custom_role : k => role.role_id
#   }
# } */