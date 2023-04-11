# HelpChain-Infra: main.tf

## Digital Ocean Project: To organize and manage your resources within the Digital Ocean platform.
## https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project
resource "digitalocean_project" "helpchain_project" {
  name        = var.project_name
  description = "HelpChain chatbot application"
}


## Digitial Ocean Virtual Private Network: To establish a secure network perimetre for the solution
resource "digitalocean_vpc" "helpchain_vpc" {
  name        = "helpchain_vpc"
  description = "Default network for the helpchain GPT solution"
  region      = var.region
  ip_range    = "10.10.10.0/24"
}


## Digital Ocean Kubernetes Cluster: A managed Kubernetes cluster that will host your application.
## https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster
## https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_node_pool
resource "digitalocean_kubernetes_cluster" "helpchain_cluster" {
  name          = "${var.project_name}-cluster"
  region        = var.region
  version       = var.kubernetes_version
  auto_upgrade  = true
  surge_upgrade = true
  vpc_uuid      = digitalocean_vpc.helpchain_vpc.id
  project_id    = digitalocean_project.helpchain_project.id

  maintenance_policy {
    start_time  = "02:00"
    day         = "sunday"
  }

  node_pool {
    name       = "worker-pool"
    size       = var.worker_node_size
    node_count = var.worker_node_count
  }
}