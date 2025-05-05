variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "Production"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "eks_cluster_role_arn" {
  description = "ARN of existing IAM role for EKS cluster"
  type        = string
  default     = "arn:aws:iam::905418330989:role/LabRole"
}

variable "eks_node_group_role_arn" {
  description = "ARN of existing IAM role for EKS node group"
  type        = string
  default     = "arn:aws:iam::905418330989:role/LabRole"
}
