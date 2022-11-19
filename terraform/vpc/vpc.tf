module "gcp-network" {
  source  = "terraform-google-modules/network/google"
  version = ">= 5.2.0"

  project_id   = var.project_id
  network_name = var.network_name

  subnets = [
    {
      subnet_name   = var.subnetwork_name
      subnet_ip     = var.subnetwork_ip_range
      subnet_region = var.region
    },
  ]

  secondary_ranges = {
    (var.subnetwork_name) = [
      {
        range_name    = var.pods_ip_range_name
        ip_cidr_range = var.pods_ip_range
      },
      {
        range_name    = var.services_ip_range_name
        ip_cidr_range = var.services_ip_range
      },
    ]
  }
}
