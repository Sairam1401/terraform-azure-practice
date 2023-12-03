# Subscription Variables
variable "azure_vnet_subscription_id" {
  description = "(Required) Id of the subscription where Landing zone to be created"
  type        = string
  default     = ""
}

# Subscription Variables
variable "hub_subscription_id" {
  description = "Id of the subscription where Landing zone to be created"
  type        = string
  default     = ""
}
