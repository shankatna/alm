#-------------------------------------------------------------------
# Name            : Shan
# Version         : 00.01
# Date            :	09/28/2020
# Description     : Module - Create VM instance
#                   
# Change history  :
#-------------------------------------------------------------------

resource "azurerm_public_ip" "pipVMInstance" {
    name                    =   join("",["pip", var.name])
    resource_group_name     =   var.resource_group_name   
    location                =   var.location
    allocation_method       =   "Dynamic"
    tags                    =   var.customTags
    sku                     =   "Basic"
}

resource "azurerm_network_interface" "nicVMInstance" {
    name                    =   join("",["nicvm", var.name])
    resource_group_name     =   var.resource_group_name   
    location                =   var.location

  ip_configuration {
    name                          = join("",["nicPublic", var.name])
    subnet_id                     = var.pubSubnetid
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pipVMInstance.id
  }
}

resource "azurerm_windows_virtual_machine" "vmWindows" {
  name                = join("",["appVM", var.name])
  resource_group_name = var.resource_group_name 
  location            = var.location
  size                = var.size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  
  network_interface_ids = [
    azurerm_network_interface.nicVMInstance.id,
  ]


  os_disk {
    name                  =   join("",["appVmdisk", var.name])
    disk_size_gb          =   127
    caching               =   "ReadWrite"
    storage_account_type  =   var.storage_account_type
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.versiondetails
  }

  tags = var.customTags


}