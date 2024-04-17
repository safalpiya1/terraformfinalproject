variable "common_tags" {
}

variable "n01526950_Rg_name" {}

variable "n01526950_Rg_location" {}

variable "prefix" {
  type    = string
  default = "n01526950-vm"
}

variable "nb_count" {
  default = "3"
}

variable "linux_avs" {
  default = "lab-db1-s-vm"
}

variable "linux_size" {
  type    = string
  default = "Standard_B1s"
}

variable "admin_username" {
  type    = string
  default = "s"
}

variable "public_key" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}

variable "private_key" {
  type    = string
  default = "~/.ssh/id_rsa"
}

variable "os_disk_storage_account_type" {
  type    = string
  default = "Premium_LRS"
}

variable "ubuntu_version" {
  type    = string
  default = "latest"
}

variable "subnet_id" {}

variable "storage_account_uri" {}

variable "instance_count" {
  default = 3
}

variable "os_disk_size" {
  default = 30
}

variable "os_disk_caching" {
  default = "ReadWrite"
}

variable "ubuntu_publisher" {
  default = "OpenLogic"
}

variable "ubuntu_offer" {
  default = "CentOS"
}

variable "ubuntu_sku" {
  default = "8_2"
}

variable "publisher_network_watcher" {
  default = "Microsoft.Azure.NetworkWatcher"
}

variable "agent_type_network_watcher" {
  default = "NetworkWatcherAgentLinux"
}

variable "publisher_azure_monitor" {
  default = "Microsoft.Azure.Monitor"
}

variable "agent_type_azure_monitor" {
  default = "AzureMonitorLinuxAgent"
}
