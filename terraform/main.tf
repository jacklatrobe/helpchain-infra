# HelpChain-Infra: main.tf

## Digital Ocean Project: To organize and manage your resources within the Digital Ocean platform.
resource "digitalocean_project" "helpchain_project" {
  name        = var.project_name
  description = "HelpChain chatbot application"
}

## Digital Ocean Kubernetes Cluster: A managed Kubernetes cluster that will host your application.
resource "digitalocean_kubernetes_cluster" "helpchain_cluster" {
  name         = "${var.project_name}-cluster"
  region       = var.region
  version      = var.kubernetes_version
  project_id   = digitalocean_project.helpchain_project.id

  node_pool {
    name       = "worker-pool"
    size       = var.worker_node_size
    node_count = var.worker_node_count
  }
}

## Digital Ocean Kubernetes Node Pool: A group of worker nodes that will run your application containers.