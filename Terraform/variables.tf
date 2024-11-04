# Shared variables for all environments

variable "client_id" {
  description = "The Client ID of the Service Principal"
  type        = string
}

variable "client_secret" {
  description = "The Client Secret of the Service Principal"
  type        = string
}

variable "tenant_id" {
  description = "The Tenant ID of the Azure Active Directory"
  type        = string
}

variable "subscription_id" {
  description = "The Subscription ID of the Azure account"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure location for the storage account"
  type        = string
}

variable "account_tier" {
  description = "The performance tier of the storage account"
  type        = string
  default     = "Standard"  # Default to Standard tier
}

variable "account_replication_type" {
  description = "The replication type of the storage account"
  type        = string
  default     = "LRS"       # Default to Locally Redundant Storage
}

# Development environment variables
variable "dev_storage_account_name" {
  description = "The name of the storage account for dev"
  type        = string
  default     = "devstorageacct"  # Example name
}

variable "dev_resource_group_name" {
  description = "The name of the resource group for dev"
  type        = string
  default     = "devResourceGroup" # Example name
}

variable "dev_location" {
  description = "The Azure location for the storage account in dev"
  type        = string
  default     = "East US"          # Example location
}

# QA environment variables
variable "qa_storage_account_name" {
  description = "The name of the storage account for QA"
  type        = string
  default     = "qastorageacct"    # Example name
}

variable "qa_resource_group_name" {
  description = "The name of the resource group for QA"
  type        = string
  default     = "qaResourceGroup"   # Example name
}

variable "qa_location" {
  description = "The Azure location for the storage account in QA"
  type        = string
  default     = "East US"           # Example location
}

# Production environment variables
variable "prod_storage_account_name" {
  description = "The name of the storage account for prod"
  type        = string
  default     = "prodstorageacct"    # Example name
}

variable "prod_resource_group_name" {
  description = "The name of the resource group for prod"
  type        = string
  default     = "prodResourceGroup"   # Example name
}

variable "prod_location" {
  description = "The Azure location for the storage account in prod"
  type        = string
  default     = "East US"             # Example location
}
