output "namespace" {
  description = "The Kubernetes namespace where Glance is deployed"
  value       = kubernetes_namespace.glance.metadata[0].name
}

output "deployment_name" {
  description = "The name of the Glance deployment"
  value       = kubernetes_deployment.glance.metadata[0].name
}

output "service_name" {
  description = "The name of the Kubernetes service exposing Glance"
  value       = kubernetes_service.glance.metadata[0].name
}
