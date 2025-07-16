
variable "cluster_role_name" {
    description = "eks cluster role name"
    type = string
    default = "eks_cluster_role"
  
}

variable "node_role_name" {
    description = "eks cluster role name"
    type = string
    default = "eks_node_role"
  
}




variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
}