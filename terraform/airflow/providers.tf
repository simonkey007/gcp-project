provider "helm" {
  kubernetes {
    host                   = "https://${data.terraform_remote_state.gke.outputs.cluster_endpoint}"
    token                  = data.google_client_config.default.access_token
    cluster_ca_certificate = data.terraform_remote_state.gke.outputs.cluster_ca_certificate
  }
}

provider "kubernetes" {
  host                   = "https://${data.terraform_remote_state.gke.outputs.cluster_endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = data.terraform_remote_state.gke.outputs.cluster_ca_certificate
}
