resource "proxmox_lxc" "minecraft" {
  target_node = "rhea"
  hostname    = "minecraft"

  onboot = false

  cmode                = ""
  bwlimit              = 0
  cores                = 2
  force                = false
  ignore_unpack_errors = false
  memory               = 6144
  ostype               = "alpine"
  restore              = false
  template             = false
  unique               = false
  unprivileged         = true
}
