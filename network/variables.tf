/*
# Naming
variable "entity" {
  type        = string
  description = "Company that owns the subscription or workload the resource belongs to."
}

variable "unit" {
  type        = string
  description = <<EOT
  Top-level division of your company that owns the subscription or workload the resource belongs to.
  In smaller organizations, this may represent a single corporate top-level organizational element.
  (IT, Cloud & DevOps, Digital Factory, Management Consulting, T&M National, T&M International, ...)
  EOT
}

variable "projectappservice" {
  type        = string
  description = "Name of the project, application, workload, or service that the resource is a part of."
}

variable "environment" {
  type        = string
  description = "The stage of the workload's development lifecycle that the resource is supporting."
}


# Network: vnet, subnet, nsgs
variable "address_space" {
  description = "Address space of the Virtual Network"
  type        = list(string)
}

variable "default_custom_rules" {
  description = "List containing all custom rules that should be applied to all defined NSGs"
  type        = list(any)
  default     = []
}

variable "default_predefined_rules" {
  description = "List containing all predefined rules that should be applied to all defined NSGs"
  type        = list(any)
  default     = []
}

variable "subnets" {
  description = "Map containing subnet info to be passed to corresponding module"
  type        = map(any)
}
*/

# Location
variable "location" {
  description = "Location (Azure region)"
  type        = string
}

# Resource Group Name
variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

# Tagging
variable "custom_tags" {
  description = "Custom tags that will be merged with the default tags."
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Default tags to be added"
  type        = map(string)
  default = {
    "ManagedBy" : "Terraform"
  }
}
