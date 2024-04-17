variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of associated EKS Cluster"
  type        = string 
  default     = "Cluster1"
}

variable "cluster_version" {
  description = "Kubernetes version. Defaults to EKS Cluster"
  type        = string
  default     = "1.23"  
}

variable "vpc_id" {
  description = "ID of Default AWS VPC"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs from the default VPC"
  type = list
}





