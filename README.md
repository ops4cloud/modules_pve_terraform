# modules_pve_terraform

## Requirements

 - git
 - terraform >= 1.0.8
 - template imported to your pve cluster
 
## Example

```tf
module "modules_pve_terraform" {
  source = "git@github.com:ops4cloud/modules_pve_terraform.git"
  ssh_key = "......."
  pve_host = "pve.example.com"
  pve_passwd = "ChangeMe"
  vms = {
    postgres = {
      memory       = "2048"
      cpu          = "2"
      cpu_type     = "kvm64"
      sockets      = "2"
      clone_base   = "centos-8-template"
      ip_addr      = "10.10.10.1"
      ip_gateway   = "10.10.10.2"
      bridge_int   = "vmbr0"
      bridge_model = "virtio"
      bridge_tag   = 10
      os_type      = "cloud-init"
      description  = "Default VM"
      scsihw       = "virtio-scsi-pci"
      bootdisk     = "scsi0"
      nameserver   = "10.10.10.2"
      searchdomain = "example.com"
      onboot       = true
      agent        = 1
    }
    zabbix = {
      memory       = "2048"
      cpu          = "2"
      cpu_type     = "kvm64"
      sockets      = "2"
      clone_base   = "centos-8-template"
      ip_addr      = "10.10.10.1"
      ip_gateway   = "10.10.10.2"
      bridge_int   = "vmbr0"
      bridge_model = "virtio"
      bridge_tag   = 10
      os_type      = "cloud-init"
      description  = "Default VM"
      scsihw       = "virtio-scsi-pci"
      bootdisk     = "scsi0"
      nameserver   = "10.10.10.2"
      searchdomain = "example.com"
      onboot       = true
      agent        = 1
    }
  }
}
```
