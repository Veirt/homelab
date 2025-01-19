resource "proxmox_vm_qemu" "hephaestus" {
  name = "hephaestus"
  desc = ""

  onboot = false

  agent                  = 1
  automatic_reboot       = true
  boot                   = "order=scsi0"
  cores                  = 4
  cpu_type               = "x86-64-v2-AES"
  define_connection_info = false
  full_clone             = false
  machine                = "pc-i440fx-9.0"
  balloon                = 4096
  memory                 = 8192
  numa                   = false
  qemu_os                = "win10"
  scsihw                 = "virtio-scsi-single"
  vm_state               = "stopped"

  disks {
    scsi {
      scsi0 {
        disk {
          backup     = true
          cache      = "writeback"
          discard    = false
          emulatessd = false
          format     = "raw"
          iothread   = true
          readonly   = false
          replicate  = true
          size       = "64G"
          storage    = "local-lvm"
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
