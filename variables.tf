variable "vms" {
  default = {}
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
  default = "50"
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