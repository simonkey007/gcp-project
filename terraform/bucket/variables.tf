variable "project_id" {
  description = "The GCP project ID to host the cluster in"
}

variable "region" {
  description = "The GCP region to host the cluster in"
  default     = "europe-central2"
}

variable "bucket_name_prefix" {
  type        = string
  description = "The prefix of the Google Storage Bucket to create"
}

variable "storage_class" {
  type        = string
  description = "The storage class of the Google Storage Bucket to create"
}
