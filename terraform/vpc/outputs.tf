output "region" {
  value       = var.region
  description = "The GCP region"
}

output "project_id" {
  value       = var.project_id
  description = "The GCP project ID"
}

output "vpc_id" {
  value       = module.gcp-network.network_id
  description = "The ID of the VPC being created"
}

output "vpc_name" {
  value       = module.gcp-network.network_name
  description = "The name of the VPC being created"
}

output "subnets_names" {
  value       = module.gcp-network.subnets_names
  description = "The names of the subnets being created"
}

output "pods_ip_range_name" {
  value       = var.pods_ip_range_name
  description = "The pods secondary ip range name"
}

output "services_ip_range_name" {
  value       = var.services_ip_range_name
  description = "The services secondary ip range name"
}
