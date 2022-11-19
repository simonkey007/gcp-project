data "terraform_remote_state" "vpc" {
  backend   = "gcs"
  workspace = terraform.workspace
  config  = {
    bucket  = "chatbot-org-terraform-euc2"
    prefix  = "vpc/gke-euc2-vpc/"
  }
}
