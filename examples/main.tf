terraform {
  required_providers {
    spotinst = {
      source = "spotinst/spotinst"
    }
  }
}

provider "google" {
  # Configuration options
  project = "project1"
  region = "us-west2"
}

provider "spotinst" {
  account = local.spot_account
  token   = local.spot_token
}

### Spot Ocean resource - Create the Ocean Cluster ###
module "ocean-gke-launchspec" {
  source = "stevenfeltner/ocean-gke-launchspec/spotinst"

  cluster_name        = "gke-sales"
  node_pool_name      = "pool-1"
  ocean_id            = "o-1234567"
}

output "ocean_id" {
  value = module.ocean-gke-launchspec.launchspec_id
}