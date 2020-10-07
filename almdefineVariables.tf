#-------------------------------------------------------------------
# Name            : Shan
# Version         : 00.01
# Date            :	09/25/2020
# Description     : Variable definiton for ALM Project 
#                   
# Change history  :
#-------------------------------------------------------------------




variable "projectDetails" {
    description =   "This map contains project name,region etc"  
    type        =   map(string)
}


variable "cidr_detail"  {
    description     =   "This value will hold the vnet address details"
    type            =   list(string)
}

variable "customTags" {
    description     =   "This value will have the list of custom tags specified in the set variable section"
    type = map(string)
}

variable "subnets" {
    description     =   "address of subnets to be created"
    type            =   list(string)
}

variable "winInstance" {
    description     =   "This map will contain values for Window VM creation"
    type = map(string)
}
variable "dbInstance" {
    description     =   "This map will contain values for DB instance creation"
    type = map(string)
}