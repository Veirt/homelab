resource "proxmox_vm_qemu" "althea" {
  name        = "althea"
  desc        = ""
  vmid        = 1053
  target_node = "rhea"

  agent = 1

  memory = 5124
  cores  = 3
  numa   = true

  full_clone             = false
  onboot                 = true
  define_connection_info = false
  tablet                 = false

  scsihw = "virtio-scsi-single"
  disks {
    virtio {
      virtio0 {
        disk {
          iothread  = true
          backup    = true
          discard   = true
          format    = "raw"
          readonly  = false
          replicate = true
          size      = "30G"
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
}
