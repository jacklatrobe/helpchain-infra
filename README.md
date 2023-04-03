# helpchain-infra
helpchain-infra - Infrastructure provisioning and configuration for the HelpChain chatbot platform by LCG
https://github.com/jacklatrobe/helpchain-infra 

## Overview
This repository contains the infrastructure code for HelpChain, a chatbot application powered by GPT-4 and implemented in Python. The application is hosted on Kubernetes, leveraging the Digital Ocean platform for efficient and scalable deployment. The infrastructure components are defined using Terraform, a popular Infrastructure as Code (IaC) tool, to ensure reproducibility and maintainability.

## Key Technologies
### Terraform
Terraform is an open-source IaC tool that enables users to define and manage infrastructure components using a declarative configuration language. In this project, we use Terraform to manage the infrastructure for HelpChain, including provisioning resources on Digital Ocean and configuring the Kubernetes cluster. By using Terraform, we can easily version control our infrastructure, share it across team members, and minimize manual configuration errors.

### Kubernetes
Kubernetes is an open-source container orchestration platform that automates deployment, scaling, and management of containerized applications. HelpChain is hosted on a Kubernetes cluster, which allows for efficient scaling, self-healing, and management of the underlying infrastructure. Kubernetes enables us to define our application's deployment, services, and other resources in a declarative manner, abstracting away much of the complexity associated with managing containerized applications.

### Digital Ocean
Digital Ocean is a cloud computing platform that provides infrastructure as a service (IaaS). For HelpChain, we have chosen Digital Ocean as our hosting platform due to its simplicity, cost-effectiveness, and excellent support for Kubernetes. Digital Ocean's Managed Kubernetes service makes it easy to create, manage, and scale Kubernetes clusters, providing a reliable foundation for our application.

## Repository Structure
The helpchain-infra repository contains the following key directories and files:

 - terraform/: Contains Terraform configuration files for provisioning resources on Digital Ocean and setting up the Kubernetes cluster.
 - k8s/: Contains Kubernetes manifests for deploying and managing the HelpChain application and its associated resources.
 - README.md: Provides an overview of the infrastructure repository and its components.

To get started with deploying HelpChain, please refer to the detailed instructions in the Getting Started section.

## Getting Started
 - Ensure you have Terraform and Kubernetes CLI (kubectl) installed on your local machine.
 - Clone the helpchain-infra repository.
 - Follow the instructions in the terraform/README.md and k8s/README.md files to configure and deploy the infrastructure components.


This README serves as a high-level overview of the infrastructure components and their purpose in the HelpChain application. For more detailed information, refer to the respective directories (terraform/ and k8s/) and their associated README files, or get in touch with the Latrobe Consulting Group for guidance and advice on implementation: https://latrobe.group/