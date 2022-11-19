# GKE cluster
module "gke" {
  source                     = "terraform-google-modules/kubernetes-engine/google"
  version                    = ">= 23.3.0"
  project_id                 = var.project_id
  name                       = var.cluster_name
  region                     = var.region
  regional                   = true
  network                    = data.terraform_remote_state.vpc.outputs.vpc_name
  subnetwork                 = data.terraform_remote_state.vpc.outputs.subnets_names[0]
  ip_range_pods              = data.terraform_remote_state.vpc.outputs.pods_ip_range_name
  ip_range_services          = data.terraform_remote_state.vpc.outputs.services_ip_range_name
  create_service_account     = true
  remove_default_node_pool   = true

  node_pools = [
    {
      name                      = var.node_pool_name
      machine_type              = var.node_machine_type
      initial_node_count        = var.num_nodes_per_zone
    },
  ]
}
