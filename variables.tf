variable "subscription_id" {
    description = "The Azure subscription ID to use for the resources."
    type        = string
}

variable "project" {
    description = "The name of the project."
    type        = string
    default     = "pokequeue"
}

variable "environment" {
    description = "The environment for the resources (e.g., dev, prod)."
    type        = string
    default     = "dev"
}

variable "location" {
    description = "The Azure region where resources will be created."
    type        = string
    default     = "Central US"
}

variable "tags" {
    description = "Tags to apply to the resources."
    type        = map(string)
    default     = {
        enviroment = "development"
        date = "2025-08-09"
        createdBy = "Estiven Mejía"
    }
}

variable "admin_sql_password" {
    description = "The administrator password for the SQL server."
    type        = string
}

