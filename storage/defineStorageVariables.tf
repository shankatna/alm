#-------------------------------------------------------------------
# Name            : Shan
# Version         : 00.01
# Date            :	09/28/2020
# Description     : Defining required variabls to be used in mainStorage.tf module
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