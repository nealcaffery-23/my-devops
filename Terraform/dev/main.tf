module "storage_account" {
  source                    = "../modules/storage_account"
  storage_account_name      = var.dev_storage_account_name
  resource_group_name       = var.dev_resource_group_name
  location                  = var.dev_location
  account_tier              = var.account_tier
  account_replication_type   = var.account_replication_type
}
