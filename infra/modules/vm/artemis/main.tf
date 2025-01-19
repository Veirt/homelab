resource "proxmox_vm_qemu" "artemis" {
  name = "artemis"
  desc = ""

  onboot = false

  agent                  = 1
  automatic_reboot       = true
  boot                   = "order=scsi0"
  bios                   = "ovmf"
  cores                  = 2
  cpu_type               = "x86-64-v2-AES"
  define_connection_info = false
  full_clone             = false
  machine                = "pc-i440fx-7.1"
  balloon                = 8192
  memory                 = 11264
  numa                   = false
  qemu_os                = "win10"
  scsihw                 = "virtio-scsi-pci"
  vm_state               = "stopped"

  disks {
    scsi {
      scsi0 {
        disk {
          backup     = true
          cache      = "writeback"
          discard    = true
          emulatessd = false
          format     = "raw"
          iothread   = false
          readonly   = false
          replicate  = true
          size       = "100G"
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
    model     = "e1000"
  }
}
