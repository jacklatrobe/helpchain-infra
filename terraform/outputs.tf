# HelpChain-Infra: outputs.tf

output "kubeconfig" {
  value       = digitalocean_kubernetes_cluster.helpchain_cluster.kubeconfig
  description = "Kubeconfig file content for the HelpChain Kubernetes cluster"
}

output "cluster_endpoint" {
  value       = digitalocean_kubernetes_cluster.helpchain_cluster.endpoint
  description = "Endpoint for the HelpChain Kubernetes cluster"
}

output "cluster_id" {
  value       = digitalocean_kubernetes_cluster.helpchain_cluster.id
  description = "ID of the HelpChain Kubernetes cluster"
}
