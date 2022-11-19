variable "project_id" {
  description = "The project ID to host the cluster in"
}

variable "region" {
  description = "The region to host the cluster in"
  default     = "europe-central2"
}

variable "network_name" {
  description = "The VPC network name to host the cluster in"
  default     = "default-vpc"
}

variable "subnetwork_name" {
  description = "The subnetwork created to host the cluster in"
  default     = "default-gke-subnet"
}

variable "subnetwork_ip_range" {
  description = "The subnetwork IP range to host the cluster in"
  default     = "10.0.0.0/24"
}

variable "pods_ip_range_name" {
  description = "The pods secondary ip range name"
  default     = "ip-range-pods"
}

variable "services_ip_range_name" {
  description = "The services secondary ip range name"
  default     = "ip-range-svc"
}

variable "pods_ip_range" {
  description = "The secondary ip range to use for pods"
  default     = "10.1.0.0/24"
}

variable "services_ip_range" {
  description = "The secondary ip range to use for services"
  default     = "10.2.0.0/24"
}
