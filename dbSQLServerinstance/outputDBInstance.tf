#-------------------------------------------------------------------
# Name            : Shan
# Version         : 00.01
# Date            :	09/29/2020
# Description     : Output from DB Module . 
#                   The required arguments are passed.
# Change history  :
#-------------------------------------------------------------------

output  "dbVMPublicip" {
    description     =   "Public address for VM instance"
    value           =   azurerm_windows_virtual_machine.vmDb.public_ip_address
}

output  "dbVMPrivateip" {
    description     =   "Private ip address for DB instance"
    value           =   azurerm_windows_virtual_machine.vmDb.private_ip_address
}

