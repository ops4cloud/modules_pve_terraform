variable "vms" {
  default = { 
    default_vm = {
      memory       = "2048"
      cpu          = "2"
      cpu_type     = "kvm64"
      sockets      = "2"
      clone_base   = "centos-7-template"
      ip_addr      = "10.10.10.50"
      ip_gateway   = "10.10.10.254"
      bridge_int   = "vmbr0"
      bridge_model = "virtio"
      os_type      = "cloud-init"
      description  = "Default VM"
      scsihw       = "virtio-scsi-pci"
      bootdisk     = "scsi0"
      nameserver   = "10.10.10.254"
      searchdomain = "ops4cloud.fr"
    }
  }
  type = map(object({
    memory       = string
    cpu          = string
    cpu_type     = string
    sockets      = string
    clone_base   = string
    ip_addr      = string
    ip_gateway   = string
    bridge_int   = string
    bridge_model = string
    os_type      = string
    description  = string
    scsihw       = string
    bootdisk     = string
    nameserver   = string
    searchdomain = string
  }))
}

variable "target_node" {
  description = "Host that the vm gonna be on"
  type        = string
  default     = "pve"
}

variable "disk_type" {
  type = string
  default = "scsi"
}

variable "storage_name" {
  type = string
  default = "local-lvm"
}

variable "storage_size" {
  type = string
  default = "50G"
}

variable "ssh_key" {
  type = string
}

variable "ciuser" {
  type = string
  default = "cloudinit"
}

variable "cipassword" {
  type = string
  default = "SuperMotDePasse"
}

variable "pve_host" {
  type = string
}

variable "pve_port" {
  type = string
  default = "8006"
}

variable "pve_user" {
  type = string
  default = "root@pam"
}

variable "pve_passwd" {
  type = string
}

variable "pve_tls_insecure" {
  type = string
  default = "true"
}

variable "pve_host_timeout" {
  type = string
  default = "500"
}