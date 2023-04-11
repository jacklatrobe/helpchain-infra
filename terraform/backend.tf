# HelpChain-Infra: backend.tf

terraform {
  backend "local" {
    path = "helpchain-infra.tfstate"
  }
}

