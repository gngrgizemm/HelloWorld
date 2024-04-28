variable "agent_count" {
  default = 1
}

variable "aks_service_principal_app_id" {
  default = ""
}

variable "aks_service_principal_client_secret" {
  default = ""
}

variable "admin_username" {
  default = "gizemce"
}

variable "cluster_name" {
  default = "gizemce"
}

variable "dns_prefix" {
  default = "gizemce"
}

variable "resource_group_location" {
  default     = "West Europe"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  default     = "gizemce-k8s-RG"
  description = "Resource group name that is unique in your Azure subscription."
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}
