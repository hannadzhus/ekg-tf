terraform {
  backend "gcs" {
    bucket  = "gke-bucket-hanna"
    prefix  = "terraform/state"
  }
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.47.0"
    }
  }
}



