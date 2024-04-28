resource "kubernetes_group" "eks_readonly_group" {
  metadata {
    name = "eks-readonly-group"
  }

  users = ["audit"]
}


