variable "common_tags" {}

variable "n01526950_Rg_name" {}

variable "n01526950_Rg_location" {}

variable "n01526950_vnet" {
  type    = string
  default = "n01526950_vnet"
}

variable "n01526950_vnet_aspace" {
  default = ["10.0.0.0/16"]
}

variable "n01526950_subnet" {
  type    = string
  default = "n01526950_subnet"
}

variable "nsg" {
  type    = string
  default = "n01526950_nsg"
}

variable "n01526950_subnet_aspace" {
  default = ["10.0.0.0/24"]
}
