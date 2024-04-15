output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_security_group_id" {
  value = module.eks.cluster_security_group_id
}

output "node_group_1_instance_type" {
  value = module.eks.node_group_1_instance_type
}

output "node_group_1_instance_role_arn" {
  value = module.eks.node_group_1_instance_role_arn
}

output "node_group_1_autoscaling_group_id" {
  value = module.eks.node_group_1_autoscaling_group_id
}

output "node_group_2_instance_type" {
  value = module.eks.node_group_2_instance_type
}

output "node_group_2_instance_role_arn" {
  value = module.eks.node_group_2_instance_role_arn
}

output "node_group_2_autoscaling_group_id" {
  value = module.eks.node_group_2_autoscaling_group_id
}
