# loading environment\custom_roles\custom-roles.json. custom_roles.json has array of role defintions include in json file. 
# To enhance assignable scope in json file and code to include if required
locals {
  custom_role_definitions = jsondecode(file("./environments/custom-role/custom-roles.json")).custom_roles
}