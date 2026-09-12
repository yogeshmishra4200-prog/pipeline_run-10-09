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