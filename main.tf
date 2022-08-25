resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_network_interface" "nic" {
  name                      = var.nic_name
  location                  = var.location
  resource_group_name       = var.resource_group_name
  network_security_group_id = azurerm_network_security_group.nsg.id

  ip_configuration {
    name                          = "internal"
    private_ip_address_allocation = "Dynamic"
  }
}
