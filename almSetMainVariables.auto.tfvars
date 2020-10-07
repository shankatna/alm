#-------------------------------------------------------------------
# Name            : Shan
# Version         : 00.01
# Date            :	09/25/2020
# Description     : ALM Project - Static values for this project is passed from this file 
#                   
# Change history  :
#-------------------------------------------------------------------


projectDetails = {
    Name        =   "Alm"
    location    =   "Canada Central"
    Owner       =   ""
    Environment =   "Dev"
}

cidr_detail = ["10.0.0.0/16"]

subnets =   ["10.0.1.0/24","10.0.2.0/24"]

customTags = {
    environment =   "Dev"
    Owner       =   "Shan"
    project     =   "ALM"
}

winInstance =   {
    size                    =   "Standard_D2s_v3"
    admin_username          =   "almappadminuser"
    admin_password          =   "almappadmin@Halifax"
    storage_account_type    =   "Standard_LRS"
    publisher               =   "MicrosoftWindowsServer"
    offer                   =   "WindowsServer"
    sku                     =   "2016-Datacenter"   
    versiondetails                 =   "latest"
}

dbInstance =   {
    size                    =   "Standard_D2s_v3"
    admin_username          =   "almdbadminuser"
    admin_password          =   "almdbadmin@Halifax"
    storage_account_type    =   "Standard_LRS"
    publisher               =   "Microsoftsqlserver"
    offer                   =   "SQL2016SP2-WS2016"
    sku                     =   "SQLDEV"   
    versiondetails          =   "latest"
    
}