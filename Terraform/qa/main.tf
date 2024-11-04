module "storage_account" {
  source                    = "../modules/storage_account"
  storage_account_name      = var.qa_storage_account_name
  resource_group_name       = var.qa_resource_group_name
  location                  = var.qa_location
  account_tier              = var.account_tier
  account_replication_type   = var.account_replication_type
}
