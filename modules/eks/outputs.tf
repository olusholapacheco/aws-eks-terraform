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
  value       = aws_security_group.eks_cluster_security_group_ids[*].id
}

output "eks_cluster_subnet_ids" {
  description = "Subnet IDs associated with the EKS cluster"
  value       = aws_subnet.eks_cluster_subnet_ids[*].id
}

output "eks_node_group_one_instance_ids" {
  description = "EC2 instance IDs of node group one"
  value       = aws_instance.eks_node_group_one_instance_ids[*].id
}

output "eks_node_group_two_instance_ids" {
  description = "EC2 instance IDs of node group two"
  value       = aws_instance.eks_node_group_two_instance_ids[*].id
}
