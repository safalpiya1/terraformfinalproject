output "linux_vm_fqdn" {
  value = values(azurerm_public_ip.linux-pip)[*].fqdn
}

output "linux_private_ip_address" {
  value = values(azurerm_linux_virtual_machine.vmlinux)[*].private_ip_address
}

output "linux_public_ip_address" {
  value = values(azurerm_linux_virtual_machine.vmlinux)[*].public_ip_address
}


output "linux_availability_set" {
  value = azurerm_availability_set.linux_avs
}

output "vm-linux" {
  value = {
    ids       = values(azurerm_linux_virtual_machine.vmlinux)[*].id
    hostnames = values(azurerm_linux_virtual_machine.vmlinux)[*].name
    nic-ids   = values(azurerm_linux_virtual_machine.vmlinux)[*].network_interface_ids[0]
  }
}

