terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = ">=1.0.0"
    }
  }
}

provider "proxmox" {
  pm_api_url      = "https://${var.pve_host}:${var.pve_port}/api2/json"
  pm_user         = "${var.pve_user}"
  pm_password     = "${var.pve_passwd}"
  pm_tls_insecure = "${var.pve_tls_insecure}"
  pm_timeout      = "${var.pve_host_timeout}"

}
