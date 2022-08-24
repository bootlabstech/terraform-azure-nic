variable "subnets" {
  description = "Subnets configuration"
  type = list(object({
    name             = string
    address_prefixes = list(string)
  }))
}

variable "resource_group_name" {
  description = "Resource group into which vnet is created"
  type        = string
}

variable "location" {
  description = "Location of the vnet"
  type        = string
}

variable "address_space" {
  description = "Address space of the vnet"
  type        = list(string)
}

variable "vnet_name" {
  description = "Name of the vnet"
  type        = string
}
# 
# variable address_prefix {
#   description = "Address prefix of the vnet"
#   type        = string
# }
#
# variable subnet_name{
#   description = "Subnet name"
#   type       = string
# }
