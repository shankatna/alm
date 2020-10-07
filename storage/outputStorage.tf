#-------------------------------------------------------------------
# Name            : Shan
# Version         : 00.01
# Date            :	09/28/2020
# Description     : Output variables to be used in Modules
#                   
# Change history  :
#-------------------------------------------------------------------



output "outStorageid" {
  description = "The id of the newly created vNet"
  value       = azurerm_storage_account.st.id
}

