variable "resource_group" {
  description = "Resource Group name"
  type        = string
  default     = "rg-devsu-jofiartt"
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "eastus"
}

variable "aks_cluster_name" {
  description = "AKS Cluster name"
  type        = string
  default     = "aks-devsu-jofiartt"
}
