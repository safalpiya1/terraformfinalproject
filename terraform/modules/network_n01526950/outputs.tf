
output "virtual_network_name" {
  value = azurerm_virtual_network.n01526950_vnet.name
}

output "virtual_network_address_space" {
  value = azurerm_virtual_network.n01526950_vnet.address_space
}

output "n01526950_subnet" {
  value = azurerm_subnet.n01526950_subnet.name
}

output "subnet_address_space_1" {
  value = azurerm_subnet.n01526950_subnet.address_prefixes
}

output "network_security_group1_name" {
  value = azurerm_network_security_group.nsg.name
}

output "subnet_id" {
  value = azurerm_subnet.n01526950_subnet.id
}
