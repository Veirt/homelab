resource "proxmox_lxc" "stardew" {
  target_node = "rhea"
  hostname    = "stardew"

  onboot = false

  memory = 6144

  cmode                = ""
  bwlimit              = 0
  cores                = 3
  force                = false
  ignore_unpack_errors = false
  ostype               = "alpine"
  restore              = false
  template             = false
  unique               = false
  unprivileged         = true


}
