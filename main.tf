provider "google" {
  project     = "sapient-tracer-417700"
  region      = "us-central1"
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.47.0"
    }
  }
}

resource "google_service_account" "default" {
  account_id   = "gke-hanna-cluster" # write any new name, it will describe your newly created cluster 
  display_name = "service acc for cluster hanna"
}

resource "google_container_cluster" "primary" {
  name               = "hanna-cluster-tf" # write a NEW name of the cluster - this new cluster will be created
  location           = "us-central1-c"
  initial_node_count = 1  # change for 3 if will be possible 
  node_config {
    disk_size_gb = 20

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.default.email
  }

#   timeouts {
#     create = "30m"
#     update = "40m"
#   }
}

