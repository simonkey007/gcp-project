terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.43.1"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "4.43.1"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.16.0"
    }
  }

  required_version = ">= 1.0.11"
}
