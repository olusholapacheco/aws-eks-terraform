provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "arn:aws:eks:us-east-1:${data.aws_caller_identity.current.account_id}:cluster/Cluster-1"
}

data "aws_caller_identity" "current" {} #retrieves account ID and passes value to the above

resource "kubernetes_namespace" "nginx" {
  metadata {
    name = "nginx-ingress"
  }
}