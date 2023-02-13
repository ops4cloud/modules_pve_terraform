resource "proxmox_vm_qemu" "proxmox_ressources" {
  for_each = var.vms
  name        = each.key
  target_node = var.target_node
  clone       = each.value.clone_base
  os_type     = each.value.os_type
  cores       = each.value.cpu
  sockets     = each.value.sockets
  cpu         = each.value.cpu_type
  memory      = each.value.memory
  scsihw      = each.value.scsihw
  bootdisk    = each.value.bootdisk
  onboot      = each.value.onboot
  network {
    model  = each.value.bridge_model
    bridge = each.value.bridge_int
    tag    = each.value.bridge_tag
  }

  disk {
    type = var.disk_type
    storage = var.storage_name
    size = var.storage_size
  }

  ipconfig0    = "ip=${each.value.ip_addr}/24,gw=${each.value.ip_gateway}"
  nameserver   = each.value.nameserver
  searchdomain = each.value.searchdomain
  sshkeys    = <<EOF
    ${var.ssh_key}
  EOF
  ciuser     = var.ciuser
  cipassword = var.cipassword
}
