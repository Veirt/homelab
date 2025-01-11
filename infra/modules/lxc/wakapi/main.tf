resource "proxmox_lxc" "wakapi" {
  target_node = "rhea"
  hostname    = "wakapi"

  onboot = true

  memory = 512

  cmode                = ""
  bwlimit              = 0
  cores                = 1
  force                = false
  ignore_unpack_errors = false
  ostype               = "alpine"
  restore              = false
  template             = false
  unique               = false
  unprivileged         = true

  rootfs {
    acl       = false
    quota     = false
    replicate = false
    ro        = false
    shared    = false
    size      = "2G"
    storage   = ""
  }

}
