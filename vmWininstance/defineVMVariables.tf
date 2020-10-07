#-------------------------------------------------------------------
# Name            : Shan
# Version         : 00.01
# Date            :	09/28/2020
# Description     : Defining required variabls to be used in  VM creation 
#                   
# Change history  :
#-------------------------------------------------------------------

variable "name" {
    description = "Name of the Storage to be created"
    type        =   string
    default     = "Project"
}

variable "resource_group_name" {
    description = "Resource group name should be passed from Parent module"
    type        =   string
    default     =   "rgName"
}

variable "location" {
    description =   "Storage location passed from Main"
    type        =   string
}

variable "customTags" {
    type = map(string)
}
variable "pubSubnetid" {
    description =   "Subnet id passed from parent variable"
    type        =   string
}

variable "pvtSubnetid" {
    description =   "Subnet id passed from parent variable"
    type        =   string
}

variable "size" {
    description     =   "Size of the VM eg. Standard_D2s_v3"
    type            =   string  
}

variable "admin_username" {
    description     =   "Admin user id to connect to VM"
    type            =   string  
}

variable "admin_password" {
    description     =   "Admin password to connect to VM"
    type            =   string  
}
  
variable "storage_account_type" {
    description     =   "Storage type, LRS or GRS etc"
    type            =   string  
}

variable "publisher" {
    description     =   "Image publisher WindosServer/Linux/ etc"
    type            =   string  
}

variable "offer" {
    description     =   "Instance Imager offer eg SQL etc"
    type            =   string  
}

variable "sku" {
    description     =   "SKU of the image like 2016-Datacenter"
    type            =   string  
}
      
variable "versiondetails" {
    description     =   "Version of the image like 2016-Datacenter"
    type            =   string  
}
  
