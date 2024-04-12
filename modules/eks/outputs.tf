output "eks_cluster_name" {
  description = "Name of the created EKS cluster"
  value       = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_security_group_ids" {
  description = "Security group IDs attached to the EKS cluster"
  value       = module.eks.cluster_security_group_ids
}

output "eks_cluster_subnet_ids" {
  description = "Subnet IDs associated with the EKS cluster"
  value       = module.eks.cluster_subnet_ids
}

output "eks_node_group_one_instance_ids" {
  description = "EC2 instance IDs of node group one"
  value       = module.eks.node_group_one_instance_ids
}

output "eks_node_group_two_instance_ids" {
  description = "EC2 instance IDs of node group two"
  value       = module.eks.node_group_two_instance_ids
}
