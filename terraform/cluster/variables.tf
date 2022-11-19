variable "project_id" {
  description = "The GCP project ID to host the cluster in"
}

variable "region" {
  description = "The GCP region to host the cluster in"
  default     = "europe-central2"
}

variable "cluster_name" {
  description = "The GKE cluster name"
  default     = "chatbots-euc2-prod"
}

variable "node_pool_name" {
  description = "The name of GKE cluster node pool"
  default     = "default-node-pool"
}

variable "num_nodes_per_zone" {
  default     = 1
  description = "The number of GKE nodes per zone"
}

variable "node_machine_type" {
  default     = "e2-medium"
  description = "The name of a Google Compute Engine machine type for GKE cluster nodes"
}
