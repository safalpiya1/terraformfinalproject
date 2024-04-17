resource "null_resource" "vmlinux-provisioner-linux" {
  for_each   = local.instances
  depends_on = [azurerm_linux_virtual_machine.vmlinux]
  provisioner "remote-exec" {
    inline = ["echo Hostname: $(hostname)"]
  }

  connection {
    type        = "ssh"
    user        = var.admin_username
    private_key = file(var.private_key)
    host        = azurerm_linux_virtual_machine.vmlinux[each.key].public_ip_address
  }
}
