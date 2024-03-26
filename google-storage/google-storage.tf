module "gke_bucket" {
  source      = "git@github.com:hannadzhus/tf-modules.git//google-storage"
  bucket_name = "gke-bucket"
  location    = "us-central1"
  bucket-storage-class = "STANDARD"
  level-access = true
}
