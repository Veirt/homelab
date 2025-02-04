# LXC
module "elfriede" {
  source = "./modules/lxc/elfriede"
}

module "minecraft" {
  source = "./modules/lxc/minecraft"
}

module "adguard" {
  source = "./modules/lxc/adguard"
}

module "wakapi" {
  source = "./modules/lxc/wakapi"
}

module "grafana" {
  source = "./modules/lxc/grafana"
}

module "stardew" {
  source = "./modules/lxc/stardew"
}

# VM
module "artemis" {
  source = "./modules/vm/artemis"
}

module "hera" {
  source                  = "./modules/vm/hera"
  enclosure_usb_device_id = var.enclosure_usb_device_id
  scsi_disk_path          = var.scsi_disk_path
}

module "hephaestus" {
  source = "./modules/vm/hephaestus"
}

module "althea" {
  source = "./modules/vm/althea"
}
