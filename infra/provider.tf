provider "proxmox" {
  pm_api_url  = var.pm_endpoint
  pm_user     = var.pm_username
  pm_password = var.pm_password
}
