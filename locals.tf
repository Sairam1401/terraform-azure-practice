
locals {
  # custom_roles is array of role defintions include in json file
  custom_role_definitions = jsondecode(file("./environments/custom-role/custom-roles.json")).custom_roles
}