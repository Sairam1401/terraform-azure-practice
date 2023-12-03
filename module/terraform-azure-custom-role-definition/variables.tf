variable "role_name" {
  type        = string
  description = "(Required) The name to assign to the new role definition."
}
# variable "role_definition" {
#   type = object({
#     description       = string
#     scope             = string
#     assignable_scopes = list(string)

#     permissions = object({
#       actions        = list(string)
#       notActions     = list(string)
#       dataActions    = list(string)
#       notDataActions = list(string)
#     })
#   })
#   description = "(Required) The scopes and permission for role being created."
# }
variable "role_scope" {
  type        = string
  description = "(Required) The scope to assign to the new role definition."
}
variable "role_description" {
  type        = string
  description = "(Optional) The descripton to assign to the new role definition."
}
variable "role_permissions" {
  type        =  object({
      actions        = list(string)
      notActions     = list(string)
      dataActions    = list(string)
      notDataActions = list(string)
    })
  description = "(Optional) The permission for new role definition."
  default = null
}

variable "role_assignable_scopes" {
  type        = list(string)
  description = "(Optional) The assignable scope to assign to the new role definition."
  default = []
}

