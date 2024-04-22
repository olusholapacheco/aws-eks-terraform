provider "aws" {
  region = var.region
}

terraform {
  required_version = ">= 1.0, < 2.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      # version = "~> 4.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}
resource "kubernetes_namespace" "nginx" {
  metadata {
    name = "nginx-ingress"
  }
}

