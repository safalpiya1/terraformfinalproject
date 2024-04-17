module "rgroup_n01526950" {
  source = "./modules/rgroup_n01526950"

  n01526950_Rg       = "n01526950_Rg"
  n01526950_location = "UK West"
  common_tags        = local.common_tags
}

module "network_n01526950" {
  source                = "./modules/network_n01526950"
  n01526950_Rg_location = module.rgroup_n01526950.n01526950_Rg_location
  n01526950_Rg_name     = module.rgroup_n01526950.n01526950_Rg_name
  common_tags           = local.common_tags
}

module "common_n01526950" {
  source                = "./modules/common_n01526950"
  n01526950_Rg_location = module.rgroup_n01526950.n01526950_Rg_location
  n01526950_Rg_name     = module.rgroup_n01526950.n01526950_Rg_name
  common_tags           = local.common_tags
}

module "vmlinux_n01526950" {
  source                = "./modules/vmlinux_n01526950"
  n01526950_Rg_location = module.rgroup_n01526950.n01526950_Rg_location
  n01526950_Rg_name     = module.rgroup_n01526950.n01526950_Rg_name
  subnet_id             = module.network_n01526950.subnet_id
  storage_account_uri   = module.common_n01526950.storage_account-primary_blob_endpoint
  common_tags           = local.common_tags
}

module "vmwindows_n01526950" {
  source                = "./modules/vmwindows_n01526950"
  n01526950_Rg_location = module.rgroup_n01526950.n01526950_Rg_location
  n01526950_Rg_name     = module.rgroup_n01526950.n01526950_Rg_name
  subnet_id             = module.network_n01526950.subnet_id
  storage_account_uri   = module.common_n01526950.storage_account-primary_blob_endpoint
  common_tags           = local.common_tags
}

module "datadisk_n01526950" {
  source                = "./modules/datadisk_n01526950"
  n01526950_Rg_location = module.rgroup_n01526950.n01526950_Rg_location
  n01526950_Rg_name     = module.rgroup_n01526950.n01526950_Rg_name
  vm_linux_ids          = module.vmlinux_n01526950.vm-linux.ids
  vm_windows_ids        = module.vmwindows_n01526950.windows.ids
  all_vms_ids           = concat(module.vmlinux_n01526950.vm-linux.ids, module.vmwindows_n01526950.windows.ids)
  common_tags           = local.common_tags
}

module "loadbalancer_n01526950" {
  source                = "./modules/loadbalancer_n01526950"
  n01526950_Rg_location = module.rgroup_n01526950.n01526950_Rg_location
  n01526950_Rg_name     = module.rgroup_n01526950.n01526950_Rg_name
  linux_vm_nic_ids      = module.vmlinux_n01526950.vm-linux.nic-ids
  linux_vm_name         = module.vmlinux_n01526950.vm-linux.hostnames
  common_tags           = local.common_tags
}

module "database_n01526950" {
  source                = "./modules/database_n01526950"
  n01526950_Rg_location = module.rgroup_n01526950.n01526950_Rg_location
  n01526950_Rg_name     = module.rgroup_n01526950.n01526950_Rg_name
  common_tags           = local.common_tags
}

locals {
  common_tags = {
    Assignment : "CCGC 5502 Automation Assignment"
    Name : "Safal.Piya"
    ExpirationDate : "2024-12-31"
    Environment : "Learning"
  }
}
