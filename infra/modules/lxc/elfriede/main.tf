resource "proxmox_lxc" "elfriede" {
  target_node = "rhea"
  hostname    = "elfriede"

  cmode                = ""
  bwlimit              = 0
  cores                = 2
  force                = false
  ignore_unpack_errors = false
  memory               = 5012
  onboot               = true
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
    size      = "40G"
    storage   = ""
  }

}
