#-------------------------------------------------------------------
# Name            : Shan
# Version         : 00.01
# Date            :	09/28/2020
# Description     : Output variables to be used in Modules
#                   
# Change history  :
#-------------------------------------------------------------------



output "outpipVMInstance" {
  description = "The id of the newly created vNet"
  value       = azurerm_public_ip.pipVMInstance.id
}


output  "vmWinpublicip" {
    description     =   "Public address for VM instance"
    value           =   azurerm_windows_virtual_machine.vmWindows.public_ip_address
}

output  "vmWinprivateip" {
    description     =   "Private ip address for DB instance"
    value           =   azurerm_windows_virtual_machine.vmWindows.private_ip_address
}



