variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
}

variable "location" {
  type        = string
  description = "location of the resource group"
}

variable "vnet_name" {
  type        = string
  description = "name of the azurerm_virtual_network"
}

variable "nic_name" {
  type        = string
  description = "name of the azurerm_network_interface"
}

variable "address_space" {
  type        = list(string)
  description = "name of the address_space"
}

variable "nsg_name" {
  type        = string
  description = "azurerm_network_security_group"
}
