variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
}

variable "location" {
  type        = string
  description = "location of the resource group"
}

variable "nic_name" {
  type        = string
  description = "name of the azurerm_network_interface"
}

variable "security_group_name" {
  type        = string
  description = "The name of security_group"
}

variable "ip_configuration_name" {
  type        = string
  description = "A name used for this IP Configuration."
}

variable "private_ip_address_allocation" {
  type        = string
  description = "The allocation method used for the Private IP Address. Possible values are Dynamic and Static."
}

variable "subnet_name" {
  type        = string
  description = "The name of subnet"
}

variable "virtual_network_name" {
  type        = string
  description = "The name of virtual network"
}

variable "subnet_resource_group_name" {
  type        = string
  description = "name of the resource group"
}

variable "private_ip_address" {
  type        = string
  description = "The specific ip user want to defined"
  default     = ""
}