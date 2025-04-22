variable "location" {
  description = "Azure region where resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "app_insights_name" {
  description = "Name of the Application Insights instance"
  type        = string
}

variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
  default     = {}
}
