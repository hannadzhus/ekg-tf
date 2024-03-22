# Terraform ekg-tf repo
## This is a repo with Terraform resources 
### Managed by DevOps team

In this repo you will find **gke** folder.
In **gke** folder there is a terraform code to create *Google Kubernetes Engine* cluster. There are the following files:

1. provider.tf
2. gke.tf
3. variables.tf
4. values.tfvars
5. .gitignore

In order to create a GKE, run following commands:

```
terraform init

terraform plan 

terraform apply 
```

In case of troubleshooting after terraform ws initialize, make sure to run the following:

```
terraform plan --var-file=values.tfvars

```

For the official terraform documentation click [here](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster).

![gke](Kubernetes-Scheduling.webp)