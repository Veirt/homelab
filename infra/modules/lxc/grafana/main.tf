resource "proxmox_lxc" "grafana" {
  target_node = "rhea"
  hostname    = "grafana"

  onboot = true

  memory = 256
  swap   = 512

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
    size      = "1G"
    storage   = ""
  }

}
