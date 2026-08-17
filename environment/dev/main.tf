module "resource_group" {
  source = "../../modules/azurerm_resource-group"
  rgs    = var.rgs
}

module "storage_account" {
  depends_on = [module.resource_group]
  source = "../../modules/azurerm_storage_account"
  sas    = var.sas
}

module "storage_container" {
  depends_on= [module.storage_account]
  source = "../../modules/azurermr_storage_container"
  ca     = var.ca
}
