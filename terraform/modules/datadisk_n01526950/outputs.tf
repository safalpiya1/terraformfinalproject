output "name_datadisk" {
  value = azurerm_managed_disk.datadisk[*].name
}
