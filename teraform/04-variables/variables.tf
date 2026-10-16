variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "rg-kamran-tf-lab"
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "Norway East"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "lab"
}
