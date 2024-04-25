provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "arn:aws:eks:us-east-1:${data.aws_caller_identity.current.account_id}:cluster/Cluster-1"
}

data "aws_caller_identity" "current" {} #retrieves account ID and passes value to the above - basically aws sts get-caller-identity

resource "kubernetes_namespace" "nginx" {
  metadata {
    name = "nginx-ingress"
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "nginx_ingress" {
  name       = "nginx-ingress-controller"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  namespace  = kubernetes_namespace.nginx.metadata[0].name

  set {
    name  = "controller.ingressClassResource.name"
    value = "learn"
  }
}

resource "aws_cloudwatch_log_group" "Cluster-1_eks_cluster_log_group" {  # setting cloudwatch to not keep logs for now
  name              = "/aws/eks/Cluster-1/cluster"
  retention_in_days = 0
}