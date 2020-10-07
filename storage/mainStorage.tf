#-------------------------------------------------------------------
# Name            : Shan
# Version         : 00.01
# Date            :	09/28/2020
# Description     : Module to create storage accounts
#                   
# Change history  :
#-------------------------------------------------------------------



resource "azurerm_storage_account" "st" {
  name                     = join("",["st", lower(var.name)])
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.customTags
}

