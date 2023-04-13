# HelpChain-Infra: variables.tf

variable "do_token" {
  description = "Digital Ocean API token"
  type        = string
}

variable "project_name" {
  description = "Name of the Digital Ocean project"
  type        = string
  default     = "helpchain"
}

variable "region" {
  description = "Region where the Kubernetes cluster will be deployed"
  type        = string
  default     = "nyc1"
}

variable "kubernetes_version" {
  description = "Kubernetes version for the cluster"
  type        = string
  default     = "1.26.3-do.0"
}

variable "worker_node_size" {
  description = "Size of the worker nodes"
  type        = string
  default     = "s-2vcpu-2gb"
}

variable "worker_node_max_count" {
  description = "Number of worker nodes that helpchain can scale up to - will always start at 1"
  type        = number
  default     = 3
}
