output "n01526950_Rg_name" {
  value = module.rgroup_n01526950.n01526950_Rg_name
}

output "n01526950_Rg_location" {
  value = module.rgroup_n01526950.n01526950_Rg_location
}

output "virtual_network_name" {
  value = module.network_n01526950.virtual_network_name
}

output "virtual_network_address_space" {
  value = module.network_n01526950.virtual_network_address_space
}

output "n01526950_subnet" {
  value = module.network_n01526950.n01526950_subnet
}

output "subnet_id" {
  value = module.network_n01526950.subnet_id
}

output "log_analytics_workspace_name" {
  value = module.common_n01526950.log_analytics_workspace_name
}

output "recovery_services_vault_name" {
  value = module.common_n01526950.recovery_services_vault_name
}

output "storage_account_name" {
  value = module.common_n01526950.storage_account_name
}

output "storage_account-primary_blob_endpoint" {
  value = module.common_n01526950.storage_account-primary_blob_endpoint
}

output "linux_vm_hostname" {
  value = module.vmlinux_n01526950.vm-linux.hostnames
}

output "linux_vm_fqdn" {
  value = module.vmlinux_n01526950.linux_vm_fqdn
}

output "linux_private_ip_address" {
  value = module.vmlinux_n01526950.linux_private_ip_address
}

output "linux_public_ip_address" {
  value = module.vmlinux_n01526950.linux_public_ip_address
}

output "vmlinux-nic-ids" {
  value = module.vmlinux_n01526950.vm-linux.nic-ids
}

output "vmwindows-hostname" {
  value = module.vmwindows_n01526950.windows
}

output "vmwindows-fqdn" {
  value = module.vmwindows_n01526950.windows_vm_fqdn
}

output "vmwindows-private-ip" {
  value = module.vmwindows_n01526950.windows_private_ip_address
}

output "vmwindows-public-ip" {
  value = module.vmwindows_n01526950.windows_public_ip_address
}

output "vmwindows-nic-ids" {
  value = module.vmwindows_n01526950.windows_nic_id
}

output "datadisk_name" {
  value = module.datadisk_n01526950.name_datadisk
}
output "loadbalancer-public-ip" {
  value = module.loadbalancer_n01526950.loadbalancer-public-ip
}

output "loadbalancer-name" {
  value = module.loadbalancer_n01526950.loadbalancer-name
}

