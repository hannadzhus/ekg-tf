provider "google" {
  project     = var.project_id   #"sapient-tracer-417700"
  region      = var.region   # "us-central1"
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
  account_id   = var.service_account_id # "gke-hanna-cluster" 
  display_name = var.sa_display_name  # "service acc for cluster hanna"
}

resource "google_container_cluster" "primary" {
  name               = var.cluster_name   #"hanna-cluster-tf" 
  location           = var.location #"us-central1-c"
  initial_node_count = var.initial_node_count #1  
  node_config {
    disk_size_gb = var.disk_size_gb  # 20

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.default.email
  }
}
