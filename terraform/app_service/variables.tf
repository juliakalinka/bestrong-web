variable "location" {
  description = "Azure region where resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
}

variable "app_service_plan_sku" {
  description = "SKU for the App Service Plan"
  type        = string
}

variable "app_service_name" {
  description = "Name of the App Service"
  type        = string
}

variable "app_service_pe_name" {
  description = "Name of the App Service Private Endpoint"
  type        = string
}

variable "app_service_connection_name" {
  description = "Name of the App Service Private Connection"
  type        = string
}

variable "app_insights_instrumentation_key" {
  description = "Application Insights instrumentation key"
  type        = string
}

variable "app_insights_connection_string" {
  description = "Application Insights connection string"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the Storage Account"
  type        = string
}

variable "storage_account_key" {
  description = "Primary access key of the Storage Account"
  type        = string
}

variable "fileshare_name" {
  description = "Name of the File Share"
  type        = string
}

variable "private_endpoint_subnet_id" {
  description = "ID of the subnet for private endpoint"
  type        = string
}

variable "app_subnet_id" {
  description = "ID of the subnet for app service"
  type        = string
}

variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}

variable "container_registry_url" {
  description = "The URL of the container registry without https://"
  type        = string
  default     = "bestrongacr.azurecr.io"
}

variable "container_image_name" {
  description = "The name of the container image"
  type        = string
  default     = "bestrong-web-api"
}

variable "container_image_tag" {
  description = "The tag of the container image"
  type        = string
  default     = "latest"
}

variable "container_registry_username" {
  description = "The username for the container registry"
  type        = string
  default     = ""
}

variable "container_registry_password" {
  description = "The password for the container registry"
  type        = string
  default     = ""
  sensitive   = true
}
