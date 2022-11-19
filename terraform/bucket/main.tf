# GCS Bucket
resource "google_storage_bucket" "tf-bucket" {
  project                     = var.project_id
  name                        = local.bucket_name
  location                    = var.region
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
  storage_class               = var.storage_class
  versioning {
    enabled = true
  }
}
