# HelpChain-Infra: main.tf

## Digital Ocean Tag: To be applied to appropriate resources to indicate they belong to HelpChain
resource "digitalocean_tag" "helpchain-tag" {
  ServiceName = "HelpChain"
}

## Digitial Ocean Virtual Private Network: To establish a secure network perimetre for the solution
resource "digitalocean_vpc" "helpchain_vpc" {
  name        = "helpchain-vpc"
  description = "Default network for the helpchain GPT solution"
  region      = var.region
  ip_range    = "192.168.42.0/24"
}

## Digital Ocean Kubernetes Cluster: A managed Kubernetes cluster that will host your application.
## https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster
## https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_node_pool
resource "digitalocean_kubernetes_cluster" "helpchain_cluster" {
  name          = var.project_name
  region        = var.region
  version       = var.kubernetes_version
  auto_upgrade  = true
  surge_upgrade = true
  vpc_uuid      = digitalocean_vpc.helpchain_vpc.id

  maintenance_policy {
    start_time = "02:00"
    day        = "sunday"
  }

  node_pool {
    name       = "helpchain-pool"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = var.worker_node_max_count
    size       = var.worker_node_size
  }

  tags   = [digitalocean_tag.helpchain-tag.id]
}

data "digitalocean_kubernetes_cluster" "helpchain_cluster_data" {
  name = var.project_name
}

## TODO: Integrate with Terraform Kube Provider to further automate kube configuration at this point
## https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs