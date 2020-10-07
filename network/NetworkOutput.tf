output "outVnetID" {
  description = "The id of the newly created vNet"
  value       = azurerm_virtual_network.vnet.id
}

output "outvnetName" {
  description = "The Name of the newly created vNet"
  value       = azurerm_virtual_network.vnet.name
}

output "outvnetLocation" {
  description = "The location of the newly created vNet"
  value       = azurerm_virtual_network.vnet.location
}

output "outsnetPublicid" {
  description = "Name of Public Subnet"
  value       = azurerm_subnet.snetPublic.id
}

output "outsnetPrivateid" {
  description = "Name of Private Subnet"
  value       = azurerm_subnet.snetPrivate.id
}

