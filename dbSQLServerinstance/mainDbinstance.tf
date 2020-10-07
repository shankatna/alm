#-------------------------------------------------------------------
# Name            : Shan
# Version         : 00.01
# Date            :	09/29/2020
# Description     : Module to create DB instance. 
#                   The required arguments are passed.
# Change history  :
#-------------------------------------------------------------------




# - DB Instance creation 
resource "azurerm_network_interface" "nicDBInstance" {
    name                    =   join("",["nicdb", var.name])
    resource_group_name     =   var.resource_group_name   
    location                =   var.location

  ip_configuration {
    name                          = join("",["nicPrivate", var.name])
    subnet_id                     = var.pvtSubnetid
    private_ip_address_allocation = "Dynamic"
  }
}


resource "azurerm_windows_virtual_machine" "vmDb" {
  name                = join("",["db", var.name])
  resource_group_name = var.resource_group_name 
  location            = var.location
  size                = var.size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  
  network_interface_ids = [
    azurerm_network_interface.nicDBInstance.id,
  ]

  os_disk {
    name                  =   join("",["dbVmdisk", var.name])
    disk_size_gb          =   127 
    caching              = "ReadWrite"
    storage_account_type = var.storage_account_type
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.versiondetails
  }
  tags = var.customTags

}
