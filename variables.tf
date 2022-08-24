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

variable "subnet_name" {
  type        = string
  description = "name of the azurerm_subnet"
}

variable "nic_name" {
  type        = string
  description = "name of the azurerm_network_interface"
}
