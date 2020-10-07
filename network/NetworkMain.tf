#-------------------------------------------------------------------
# Name            : Shan
# Version         : 00.01
# Date            :	09/25/2020
# Description     : Network Module configuration file. This network module can be called from any Terraform configuration files
#                   The required arguments are passed.
# Change history  :
#-------------------------------------------------------------------



resource "azurerm_virtual_network" "vnet" {
    name                =   join("",["vnet", var.name])
    resource_group_name =   var.resource_group_name
    location            =   var.location
    address_space       =   var.address_space
    
    tags =  var.customTags
}

resource "azurerm_subnet" "snetPublic" {
    
    
    name                    =   join("",["snetPublic", var.name])
    resource_group_name     =   var.resource_group_name
    virtual_network_name    =   azurerm_virtual_network.vnet.name 

    
    address_prefixes        =   [var.address_prefixes[0]]
}

resource "azurerm_subnet" "snetPrivate" {
    
    
    name                    =   join("",["snetPrivate", var.name])
    resource_group_name     =   var.resource_group_name
    virtual_network_name    =   azurerm_virtual_network.vnet.name 

    
    address_prefixes        =   [var.address_prefixes[1]]
}