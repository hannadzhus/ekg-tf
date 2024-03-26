module "gke_bucket" {
  source      = "git@github.com:hannadzhus/tf-modules.git//google-storage"
  bucket-name = "gke-bucket-hanna"
  bucket-location    = "US"

}
