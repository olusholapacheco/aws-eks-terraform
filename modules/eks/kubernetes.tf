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