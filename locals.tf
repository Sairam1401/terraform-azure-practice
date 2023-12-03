
locals {
  # custom_role_definitions = {

  # LocalTestCreateResouceGroup = {
  #   description = "Role that assigns READER rights to Subscription (current) AND rights to create Resource Groups"
  #   scope       = data.azurerm_subscription.current.id

  #   permissions = {
  #     actions = [
  #       "*/read",
  #       "Microsoft.Resources/subscriptions/resourceGroups/write"
  #     ],
  #     notActions     = [],
  #     dataActions    = [],
  #     notDataActions = []
  #   }
  #   assignable_scopes = [
  #     data.azurerm_subscription.current.id
  #   ]
  # }

  # LocalTestReadSubscription = {
  #   description = "Role that assigns READER rights to Subscription (current) AND rights to create Resource Groups"
  #   scope       = data.azurerm_subscription.current.id
  #   permissions = {
  #     actions = [
  #       "*/read",
  #       "Microsoft.Resources/subscriptions/resourceGroups/write"
  #     ],
  #     notActions     = [],
  #     dataActions    = [],
  #     notDataActions = []
  #   }
  #   assignable_scopes = [
  #     data.azurerm_subscription.current.id
  #   ]
  # }

  # Add new roles here.

  # }


  custom_role_definitions = jsondecode(file("./environments/custom-role/custom-roles.json"))

}