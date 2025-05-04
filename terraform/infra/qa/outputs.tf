output "cluster_endpoint" {
  description = "EKS API endpoint"
  value       = module.eks.cluster_endpoint
}

output "cluster_certificate_authority_data" {
  description = "Base64-encoded CA data"
  value       = module.eks.cluster_certificate_authority_data
}

output "node_group_name" {
  description = "Name of the EKS managed node group"
  value       = module.eks.node_group_name
}