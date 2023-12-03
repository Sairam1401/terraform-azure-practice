variable "role_definition" {
  type = object({
    description       = string

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
variable "role_scope" {
  type        = string
  description = "(Required) The scope to assign to the new role definition."
}
variable "role_assignable_scopes" {
  type        = list(string)
  description = "(Optional) The scope to assign to the new role definition."
  default = []
}



