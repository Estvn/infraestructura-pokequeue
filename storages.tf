# sa para queue y blob
resource "azurerm_storage_account" "sa" {
    name                     = "sa${lower(var.project)}${lower(var.environment)}"
    resource_group_name      = azurerm_resource_group.rg.name
    location                 = var.location

    account_tier             = "Standard"
    account_replication_type = "LRS"

    tags                     = var.tags
}

# Los contenedores de almacenmiento son para organizar y administrar BLOBs como directorios de archivos
# Contenedor para almacenar los reportes generados
resource "azurerm_storage_container" "container" {
    name = "reportes"
    container_access_type = "private"
    storage_account_id = azurerm_storage_account.sa.id
}

# Contiene peticiones de los reportes que se solicitarán
resource "azurerm_storage_queue" "queue" {
    name                 = "request"
    storage_account_name  = azurerm_storage_account.sa.name  
}

# sa para function app
resource "azurerm_storage_account" "saf" {
    name                     = "saf${lower(var.project)}${lower(var.environment)}"
    resource_group_name      = azurerm_resource_group.rg.name
    location                 = var.location

    account_tier             = "Standard"
    account_replication_type = "LRS"

    tags                     = var.tags
}