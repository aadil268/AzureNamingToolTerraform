variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-azurenamingtool"
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "East US"
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
  default     = "asp-azurenamingtool"
}

variable "app_service_plan_sku_tier" {
  description = "The SKU tier for the App Service Plan"
  type        = string
  default     = "Standard"
}

variable "app_service_plan_sku_size" {
  description = "The SKU size for the App Service Plan"
  type        = string
  default     = "S1"
}

variable "app_service_name" {
  description = "The name of the App Service"
  type        = string
  default     = "app-azurenamingtool"
}

