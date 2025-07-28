resource "azurerm_linux_function_app" "serverless" {
    name                        = "serverless${lower(var.project)}${lower(var.environment)}"
    location                    = var.location
    resource_group_name         = azurerm_resource_group.rg.name
    
    service_plan_id             = azurerm_service_plan.sp.id
    storage_account_name        = azurerm_storage_account.saf.name
    storage_account_access_key  = azurerm_storage_account.saf.primary_access_key

    site_config {}
    tags                        = var.tags
}