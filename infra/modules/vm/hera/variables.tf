variable "enclosure_usb_device_id" {
  description = "USB Device ID for the enclosure (format: vendor:product)"
  type        = string
}

variable "scsi_disk_path" {
  description = "Path to the SCSI disk file (e.g., /dev/disk/by-id/ata-<DISK_ID>)"
  type        = string
}
