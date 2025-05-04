module "eks" {
  source               = "../../modules/eks"
  cluster_name         = var.cluster_name
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs

  eks_cluster_role_arn    = var.eks_cluster_role_arn
  eks_node_group_role_arn = var.eks_node_group_role_arn
}