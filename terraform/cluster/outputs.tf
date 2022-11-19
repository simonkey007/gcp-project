output "region" {
  value       = var.region
  description = "The GCP region"
}

output "project_id" {
  value       = var.project_id
  description = "The GCP project ID"
}

output "cluster_name" {
  value       = module.gke.name
  description = "The GKE cluster name"
}

output "cluster_endpoint" {
  value       = module.gke.endpoint
  description = "The GKE cluster endpoint"
  sensitive   = true
}

output "cluster_ca_certificate" {
  value       = base64decode(module.gke.ca_certificate)
  description = "The GKE cluster CA certificate"
  sensitive   = true
}

output "cluster_service_account" {
  value       = module.gke.service_account
  description = "The service account to default running GKE cluster nodes"
}
