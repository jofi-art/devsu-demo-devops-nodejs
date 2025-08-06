variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-devsu-jofiart" 
}

variable "location" {
  description = "Azure region for deployment"
  type        = string
  default     = "eastus"
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "aks-devsu-jofiart"
}

variable "node_pool_name" {
  description = "Name of the default node pool"
  type        = string
  default     = "default"
}

variable "node_count" {
  description = "Number of nodes in the default pool"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "VM size for the node pool"
  type        = string
  default     = "Standard_B2s"
}