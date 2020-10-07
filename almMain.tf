#-------------------------------------------------------------------
# Name            : Shan
# Version         : 00.01
# Date            :	09/25/2020
# Description     : Main configuration file to create ALM Project with 1 Vnet and 2 Subnets
#                   individual modules are used for re-usability
# Change history  :
#-------------------------------------------------------------------


provider "azurerm" {
    version = "=2.20.0"
    features  {}
}

# Create a resource group
resource "azurerm_resource_group" "rgalmResourceGrp" {
  name          = join("",["rg",var.projectDetails["Name"]])
  location      = var.projectDetails["location"]
  
  tags = {
    environment = var.projectDetails["Environment"]
  }
}

module "network" {
  source                    =   "./network/"
  name                      =   var.projectDetails["Name"]
  resource_group_name       =   azurerm_resource_group.rgalmResourceGrp.name
  location                  =   var.projectDetails["location"]
  address_space             =   var.cidr_detail
  address_prefixes          =   var.subnets
  customTags                =   var.customTags
}

module "storage" {
  source                    =   "./storage/"
  name                      =   var.projectDetails["Name"]
  resource_group_name       =   azurerm_resource_group.rgalmResourceGrp.name
  location                  =   var.projectDetails["location"]
  customTags                =   var.customTags
}

module "vmWininstance" {
  source                    =   "./vmWininstance/"
  name                      =   var.projectDetails["Name"]
  resource_group_name       =   azurerm_resource_group.rgalmResourceGrp.name
  location                  =   var.projectDetails["location"]
  customTags                =   var.customTags
  pubSubnetid               =   module.network.outsnetPublicid
  pvtSubnetid               =   module.network.outsnetPrivateid
  

  size                      =   var.winInstance["size"]
  admin_username            =   var.winInstance["admin_username"]
  admin_password            =   var.winInstance["admin_password"]
  storage_account_type      =   var.winInstance["storage_account_type"]
  publisher                 =   var.winInstance["publisher"]
  offer                     =   var.winInstance["offer"]
  sku                       =   var.winInstance["sku"]
  versiondetails            =   var.winInstance["versiondetails"]
}

module "dbSQLServerinstance" {
  source                    =   "./dbSQLServerinstance/"
  name                      =   var.projectDetails["Name"]
  resource_group_name       =   azurerm_resource_group.rgalmResourceGrp.name
  location                  =   var.projectDetails["location"]
  customTags                =   var.customTags
  pubSubnetid               =   module.network.outsnetPublicid
  pvtSubnetid               =   module.network.outsnetPrivateid
  
  size                      =   var.dbInstance["size"]
  admin_username            =   var.dbInstance["admin_username"]
  admin_password            =   var.dbInstance["admin_password"]
  storage_account_type      =   var.dbInstance["storage_account_type"]
  publisher                 =   var.dbInstance["publisher"]
  offer                     =   var.dbInstance["offer"]
  sku                       =   var.dbInstance["sku"]
  versiondetails            =   var.dbInstance["versiondetails"]
}

