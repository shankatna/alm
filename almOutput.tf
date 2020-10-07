output "outVnetID" {
  description = "The id of the newly created vNet"
  value       = module.network.outVnetID
}


output "outvnetName" {
  description = "The Name of the newly created vNet"
  value       = module.network.outvnetName
}

output "outvnetLocation" {
  description = "The location of the newly created vNet"
  value       = module.network.outvnetLocation
}

output "outsnetPublicid" {
  description = "Name of Public Subnet"
  value       = module.network.outsnetPublicid
}

output "outsnetPrivateid" {
  description = "Name of Private Subnet"
  value       = module.network.outsnetPrivateid
}

output "outStorageid" {
  description = "Name of Private Subnet"
  value       = module.storage.outStorageid
}

output "outpipVMInstance" {
  description = "The id of the newly created vNet"
  value       = module.vmWininstance.outpipVMInstance
}

output  "dbVMPublicip" {
    description     =   "Public address for VM instance"
    value           =   module.dbSQLServerinstance.dbVMPublicip
}

output  "dbVMPrivateip" {
    description     =   "Private ip address for DB instance"
    value           =   module.dbSQLServerinstance.dbVMPrivateip
}


output  "vmWinpublicip" {
    description     =   "Public address for VM instance"
    value           =   module.vmWininstance.vmWinpublicip
}

output  "vmWinprivateip" {
    description     =   "Private ip address for DB instance"
    value           =   module.vmWininstance.vmWinprivateip
}
