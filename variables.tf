variable "helm_repository" {
  description = "Helm repository"
  type        = string
  default     = "https://charts.bitnami.com/bitnami"
}

variable "helm_chart" {
  description = "Helm chart name"
  type        = string
  default     = "nginx"
}

variable "helm_chart_version" {
  description = "Helm chart version"
  type        = string
  default     = "13.2.22"
}

variable "replica_count" {
  description = "Deployment replica count"
  type        = string
  default     = "1"
}