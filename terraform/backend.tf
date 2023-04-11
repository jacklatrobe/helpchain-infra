# HelpChain-Infra: backend.tf

# Configure the Terraform backend
terraform {
  backend "local" {
    path = "helpchain-infra.tfstate"
  }
  required_providers {
      digitalocean = {
        source = "digitalocean/digitalocean"
        version = "~> 2.0"
      }
  }
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}