# Terraform Directory README

## Overview

This directory contains the Terraform configuration files for provisioning the infrastructure resources required by HelpChain on Digital Ocean. By using Terraform, we can automate the creation and management of our resources in a consistent and maintainable way. See [this page](https://www.digitalocean.com/community/tutorials/how-to-structure-a-terraform-project) for general guidance on using Terraform with Digital Ocean.

The key resource types that these scripts deploy are:
 - [digitalocean_project](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project)
 - [digitalocean_kubernetes_cluster](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster)
 - [digitalocean_container_registry](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/container_registry)

## Directory Structure

- `main.tf`: The main Terraform configuration file that defines the Digital Ocean resources and Kubernetes cluster for HelpChain.
- `variables.tf`: Contains the Terraform input variables used in the configuration files.
- `outputs.tf`: Defines the output variables that provide information about the resources created by Terraform.
- `backend.tf`: (Optional) Configuration for the remote backend storage for Terraform state files.

## Prerequisites

1. Install [Terraform](https://www.terraform.io/downloads.html) on your local machine.
2. Set up a [Digital Ocean account](https://cloud.digitalocean.com/registrations/new) if you haven't already.
3. Generate a [Digital Ocean API token](https://cloud.digitalocean.com/account/api/tokens) with read and write permissions.

## Getting Started

1. Navigate to the `terraform/` directory.
2. Create a `terraform.tfvars` file containing the following variables:
    ~~~
    do_token = "<your_digital_ocean_api_token>"
    project_name = "<desired_project_name>"
    region = "<preferred_region>"
    ~~~
   Replace `<your_digital_ocean_api_token>`, `<desired_project_name>`, and `<preferred_region>` with your own values.
3. Initialize the Terraform working directory:
    ~~~
    terraform init
    ~~~
   (Optional) If you want to use a remote backend for storing Terraform state files, configure the `backend.tf` file before running `terraform init`.
4. Validate the Terraform configuration files:
    ~~~
    terraform validate
    ~~~
5. Review the planned infrastructure changes:
    ~~~
    terraform plan
    ~~~
6. Apply the Terraform configuration to create the resources:
    ~~~
    terraform apply
    ~~~
Confirm the changes by typing `yes` when prompted.
7. After the resources have been successfully created, Terraform will output information about the Kubernetes cluster, such as the cluster's kubeconfig file. Save the kubeconfig file locally and configure your `kubectl` to use it.

## Clean Up
To destroy the resources created by Terraform:
1. Navigate to the `terraform/` directory.
2. Run the following command:
    ~~~
    terraform destroy
    ~~~
   Confirm the destruction by typing `yes`

## Next steps
Deploy the helpchain-langchain application: https://github.com/jacklatrobe/helpchain-langchain
---

For more information on working with Terraform or managing the HelpChain application, refer to the [Terraform documentation](https://developer.hashicorp.com/terraform/docs), the HelpChain main [README](https://github.com/jacklatrobe/helpchain-infra) or contact the Latrobe Consulting Group for advice or implementation guidance: https://latrobe.group/