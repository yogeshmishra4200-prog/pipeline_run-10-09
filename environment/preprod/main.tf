module "rgs" {
  source = "../../modules/resource_groups"
  rgs    = var.x
}

module "stg" {
  depends_on = [module.rgs]
  source     = "../../modules/storage_accounts"
  stg        = var.y
}

# hey buddy apke papa aaye hai

# heylooo
#hey whatsappp

module "vnets" {
  depends_on = [module.rgs]
  source     = "../../modules/virtual_network"
  vnets      = var.vnets
}

module "subnets" {
  depends_on = [module.vnets]
  source     = "../../modules/subnet"
  subnets    = var.subnets
}

module "pips" {
  depends_on = [module.rgs]
  source     = "../../modules/public_ip"
  public_ip  = var.public_ip
}
module "vms" {
  depends_on = [module.subnets, module.pips]
  source     = "../../modules/virtual_machine"
  vms        = var.vms
}