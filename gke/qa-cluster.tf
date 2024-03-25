module "qa-cluster" {
  source = "git@github.com:hannadzhus/tf-modules.git//gke"
  region = "us-central1"
  project_id = "sapient-tracer-417700"
  service_account_id = "qa-gke-cluster" 
  sa_display_name = "service acc for cluster hanna"
  cluster_name = "qa-cluster-tf"
  location = "us-central1"
  initial_node_count = "1"
  disk_size_gb = "60"
}
