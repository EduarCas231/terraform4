variable "location" {
  description = "Región de Azure"
  type        = string
  default     = "mexicocentral"
}

variable "resource_group_name" {
  description = "Nombre del Grupo de Recursos"
  type        = string
  default     = "rg-azure-students"
}

variable "vnet_name" {
  description = "Nombre de la VNet principal"
  type        = string
  default     = "vnet-lz-prod"
}

variable "vnet_address_space" {
  description = "Espacio de direcciones de la VNet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  description = "Mapa de subredes con sus prefijos IP"
  type        = map(string)
  default = {
    "snet-app"           = "10.0.1.0/24"
    "snet-db"            = "10.0.2.0/24"
    "snet-vm"            = "10.0.3.0/24"
    "snet-endpoints"     = "10.0.4.0/24"
    "AzureBastionSubnet" = "10.0.5.0/24"
  }
}

variable "nsg_names" {
  description = "Nombres de los Network Security Groups"
  type        = list(string)
  default     = ["rsg-app", "rsg-db", "rsg-vm", "rsg-endpoints", "rsg-bastion"]
}

variable "storage_account_name" {
  description = "Nombre del Storage Account (único global, solo minúsculas y números, 3-24 chars)"
  type        = string
}

variable "postgres_server_name" {
  description = "Nombre del servidor PostgreSQL Flexible"
  type        = string
  default     = "psql-azure-students"
}

variable "postgres_admin_login" {
  description = "Usuario administrador de PostgreSQL"
  type        = string
  default     = "psqladmin"
}

variable "postgres_admin_password" {
  description = "Contraseña de PostgreSQL"
  type        = string
  sensitive   = true
}

variable "vm_admin_username" {
  description = "Usuario administrador de la VM Linux"
  type        = string
  default     = "azureuser"
}

variable "vm_admin_password" {
  description = "Contraseña del administrador de la VM"
  type        = string
  sensitive   = true
}
