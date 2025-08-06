variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "aks_cluster_name" {
  type        = string
  description = "Name of the AKS cluster"
}

variable "node_pool_name" {
  type        = string
  description = "Name of the default node pool"
}

variable "node_count" {
  type        = number
  description = "Number of nodes in the default pool"
}

variable "vm_size" {
  type        = string
  description = "VM size for the node pool"
}