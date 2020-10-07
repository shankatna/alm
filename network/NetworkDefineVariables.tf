#-------------------------------------------------------------------
# Name            : Shan
# Version         : 00.01
# Date            :	09/25/2020
# Description     : Network Module variable declaration file. 
#                   The required arguments are passed.
# Change history  :
#-------------------------------------------------------------------



variable "name" {
    description = "Name of the Virtual network to be created"
    type        =   string
    default     = "Project"
}

variable "resource_group_name" {
    description = "Resource group name should be passed from Parent module"
    type        =   string
    default     =   "rgName"
}


variable "location" {
    description =   "Location of Virtual network"
    type        =   string
}

variable "address_space" {
    description =   "Cidr address for Vnet eg. 10.0.0.0./16"
    type        =  list(string)
}

variable "address_prefixes" {
    description =   "Subnet Cidr details eg. 10.0.0.0./16"
    type        =  list(string)
}


variable "customTags" {
    type = map(string)
}