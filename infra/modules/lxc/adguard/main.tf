resource "proxmox_lxc" "adguard" {
  target_node = "rhea"
  hostname    = "adguard"

  onboot = true

  nameserver = "127.0.0.1"

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
}
