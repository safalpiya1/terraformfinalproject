output "loadbalancer-public-ip" {
  value = azurerm_public_ip.loadbalancer-pip.ip_address
}

output "loadbalancer-name" {
  value = azurerm_lb.loadbalancer.name
}
