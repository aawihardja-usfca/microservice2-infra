variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs"
  type        = list(string)
}

variable "eks_cluster_role_arn" {
  description = "ARN of existing IAM role for EKS cluster"
  type        = string
}

variable "eks_node_group_role_arn" {
  description = "ARN of existing IAM role for EKS node group"
  type        = string
}
