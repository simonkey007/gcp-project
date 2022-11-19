data "terraform_remote_state" "gke" {
  backend   = "gcs"
  workspace = terraform.workspace
  config  = {
    bucket  = "chatbot-org-terraform-euc2"
    prefix  = "gke/clusters/chatbots-euc2-prod/"
  }
}

data "google_client_config" "default" {}

data "kubernetes_service" "airflow-webserver" {
  metadata {
    name = "airflow-webserver"
    namespace = "airflow"
  }

  depends_on = [
    helm_release.airflow
  ]
}
