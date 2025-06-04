variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "vnet_cidr" {
  description = "Address space for the virtual network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of address prefixes for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of address prefixes for private subnets"
  type        = list(string)
}
