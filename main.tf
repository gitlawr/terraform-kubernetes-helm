terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "2.8.0"

      kubernetes {
        config_path = "~/.kube/config"
      }
    }
  }
}

resource "helm_release" "example" {
  name       = "my-helm-release"

  repository = var.helm_repository
  chart      = var.helm_chart
  version    = var.helm_chart_version

  set {
    name  = "replicaCount"
    value = var.replica_count
  }
}
