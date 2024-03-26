module "gke_bucket" {
  source      = "./modules/gcs_bucket"
  bucket_name = "gke-bucket"
  location    = "us-central1"
  bucket-storage-class = "STANDARD"
  level-access = true
}
