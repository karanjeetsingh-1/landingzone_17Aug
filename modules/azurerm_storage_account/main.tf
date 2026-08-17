resource "azurerm_storage_account" "storage_account" {
  for_each= var.sas
  name                     = each.value.name
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
