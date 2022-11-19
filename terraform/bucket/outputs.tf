output "bucket_name" {
  value        = google_storage_bucket.tf-bucket.name
  description = "The Google Storage Bucket name"
}

output "bucket_url" {
  value        = google_storage_bucket.tf-bucket.url
  description = "The Google Storage Bucket URL"
}
