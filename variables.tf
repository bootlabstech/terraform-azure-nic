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

variable "vm_nic_name" {
  description = "Name of the vm_nic"
  type        = string

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

variable "vms_configuration" {
  description = "the main input variable which has all the configuration regarding the vm to be created"
  type = list(object({
    name              = string,
    public_ip_enabled = bool,
    vnet_name         = string,
    subnet_id         = string,
    vm_size           = string,
    storage_os_disk = object({
      create_option             = string,
      caching                   = optional(string),
      disk_size_gb              = optional(number),
      image_uri                 = optional(string),
      os_type                   = optional(string),
      write_accelerator_enabled = optional(string),
      managed_disk_id           = optional(string),
      managed_disk_type         = optional(string),
      vhd_uri                   = optional(string),
    }),
    image_publisher = string,
    image_offer     = string,
    image_sku       = string,
    image_version   = string,
    os_username     = string,
    os_password     = string,
    os_type         = string,
  }))
}
