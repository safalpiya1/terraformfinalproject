resource "azurerm_availability_set" "windows_avs" {
  name                         = "${var.windows_name}-avs"
  resource_group_name          = var.n01526950_Rg_name
  location                     = var.n01526950_Rg_location
  platform_fault_domain_count  = 2
  platform_update_domain_count = 5

  tags = var.common_tags
}

resource "azurerm_network_interface" "windows-nic" {
  count               = var.instance_count
  name                = "${var.windows_name}-nic-${count.index + 1}"
  resource_group_name = var.n01526950_Rg_name
  location            = var.n01526950_Rg_location

  ip_configuration {
    name                          = "${var.windows_name}-ipconfig-${count.index + 1}"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = element(azurerm_public_ip.windows-pip[*].id, count.index + 1)
  }

  tags = var.common_tags

}

resource "azurerm_public_ip" "windows-pip" {

  count               = var.instance_count
  name                = "${var.windows_name}-pip-${count.index + 1}"
  resource_group_name = var.n01526950_Rg_name
  location            = var.n01526950_Rg_location
  allocation_method   = "Dynamic"
  domain_name_label   = "my-new-label-${count.index + 1}"

  tags = var.common_tags
}

resource "azurerm_windows_virtual_machine" "windows-VM" {

  count               = var.instance_count
  name                = "${var.windows_name}${count.index + 1}"
  computer_name       = "${var.windows_name}${count.index + 1}"
  resource_group_name = var.n01526950_Rg_name
  location            = var.n01526950_Rg_location


  network_interface_ids = [element(azurerm_network_interface.windows-nic[*].id, count.index + 1)]
  size                  = var.windows_size
  admin_username        = var.admin_username
  admin_password        = var.admin_password


  os_disk {
    name                 = "${var.windows_name}${count.index + 1}"
    caching              = var.win_disk_caching
    storage_account_type = var.win_storage_account_type
  }

  source_image_reference {
    publisher = var.windows_publisher
    offer     = var.windows_offer
    sku       = var.windows_sku
    version   = var.windows_version
  }

  winrm_listener {
    protocol = "Http"
  }

  boot_diagnostics {
    storage_account_uri = var.storage_account_uri
  }

  tags = var.common_tags

}


