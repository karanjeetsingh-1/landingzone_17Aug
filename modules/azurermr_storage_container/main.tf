resource "azurerm_storage_container" "storage_container" {
  for_each= var.ca
  name                  = each.value.name
  storage_account_id    = data.azurerm_storage_account.storage_account[each.key].id
  container_access_type = "private"
}

data "azurerm_storage_account" "storage_account" {
    for_each= var.ca
    name= each.value.sa_name
    resource_group_name = each.value.rg_name
}