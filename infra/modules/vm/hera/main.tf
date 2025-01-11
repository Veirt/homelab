resource "proxmox_vm_qemu" "hera" {
  name = "hera"
  desc = ""

  agent = 1

  hotplug = "disk,usb"

  memory = 5124
  cores  = 3
  numa   = true

  full_clone             = false
  onboot                 = true
  define_connection_info = false
  tablet                 = false

  scsihw = "virtio-scsi-single"
  disks {
    scsi {
      scsi0 {
        passthrough {
          backup     = false
          discard    = false
          emulatessd = false
          iothread   = false
          readonly   = false
          replicate  = true
          file       = var.scsi_disk_path
        }
      }
    }
    virtio {
      virtio0 {
        disk {
          iothread  = true
          backup    = true
          discard   = true
          format    = "raw"
          readonly  = false
          replicate = true
          size      = "40G"
          storage   = "local-lvm"
        }
      }
    }
  }

  network {
    bridge    = "vmbr0"
    firewall  = true
    id        = 0
    link_down = false
    model     = "virtio"
  }

  usbs {
    usb0 {
      device {
        device_id = var.enclosure_usb_device_id
        usb3      = false
      }
    }
  }
}
