resource "azurerm_container_registry" "name" {
  
    name                = "acr${lower(var.project)}${lower(var.environment)}"
    resource_group_name = azurerm_resource_group.rg.name
    location            = var.location
    
    sku                 = "Basic"
    admin_enabled       = true
    
    tags                = var.tags
}