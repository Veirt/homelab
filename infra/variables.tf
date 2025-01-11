variable "pm_endpoint" {
  description = "The Proxmox API endpoint"
  type        = string
}

variable "pm_username" {
  description = "Username for Proxmox authentication"
  type        = string
}

variable "pm_password" {
  description = "Password for Proxmox authentication"
  type        = string
  sensitive   = true
}

variable "enclosure_usb_device_id" {
  description = "USB Device ID for the enclosure (format: vendor:product)"
  type        = string
}

variable "scsi_disk_path" {
  description = "Path to the SCSI disk file (e.g., /dev/disk/by-id/ata-<DISK_ID>)"
  type        = string
}
