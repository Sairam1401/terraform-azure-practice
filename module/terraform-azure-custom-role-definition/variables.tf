variable "role_definition" {
  type = object({
    description       = string
    scope             = string
    assignable_scopes = list(string)

    permissions = object({
      actions        = list(string)
      notActions     = list(string)
      dataActions    = list(string)
      notDataActions = list(string)
    })
  })
  description = "(Required) The scopes and permission for role being created."
}

variable "role_name" {
  type        = string
  description = "(Required) The name to assign to the new role definition."
}

