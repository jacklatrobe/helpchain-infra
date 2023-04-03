# Kubernetes (k8s) Directory README

## Overview

This directory contains the Kubernetes manifests for deploying and managing the HelpChain chatbot application and its associated resources. By using Kubernetes, we can efficiently manage the application's deployment, scaling, and infrastructure resources.

## Directory Structure

- `deployment.yaml`: Contains the Kubernetes Deployment configuration for the HelpChain application.
- `service.yaml`: Defines the Kubernetes Service for exposing the HelpChain application to external traffic.
- `ingress.yaml`: (Optional) Contains the Kubernetes Ingress configuration for advanced traffic routing and load balancing.
- `configmap.yaml`: Defines Kubernetes ConfigMaps for managing application configuration data.

## Prerequisites

1. Ensure you have `kubectl`, the Kubernetes command-line tool, installed on your local machine. You can follow the installation instructions [here](https://kubernetes.io/docs/tasks/tools/install-kubectl/).
2. Configure `kubectl` to use the Kubernetes cluster created in the `terraform` step. The `kubeconfig` file output from Terraform should be used to set up the correct context for `kubectl`.

## First-Time Kubernetes Users

If you are new to Kubernetes, here are some resources to help you get started:

- [Kubernetes Basics](https://kubernetes.io/docs/tutorials/kubernetes-basics/): A beginner-friendly tutorial that covers Kubernetes fundamentals.
- [Kubernetes Documentation](https://kubernetes.io/docs/home/): The official documentation for Kubernetes, covering various concepts, tasks, and resources.
- [Kubernetes: Up and Running](https://www.oreilly.com/library/view/kubernetes-up-and/9781492046523/): A book that provides a comprehensive introduction to Kubernetes, including practical examples.

## Deploying HelpChain

1. Navigate to the `k8s/` directory.
2. Apply the Kubernetes manifests:
    kubectl apply -f .
3. Verify that the resources have been successfully created:
    kubectl get all
4. If your deployment includes an Ingress resource, check the Ingress status to obtain the external IP address or hostname:
    kubectl get ingress
   Use the external IP address or hostname to access the HelpChain application.

## Updating HelpChain

To update the HelpChain application, modify the relevant Kubernetes manifests in the `k8s/` directory, and then reapply the changes using `kubectl apply -f .`.

## Removing HelpChain

To delete the HelpChain resources from the Kubernetes cluster:

1. Navigate to the `k8s/` directory.
2. Run the following command:
    kubectl delete -f .

---

For more information on working with Kubernetes and managing the HelpChain application, refer to the [Kubernetes documentation](https://kubernetes.io/docs/home/), the HelpChain main [README](https://github.com/jacklatrobe/helpchain-infra) or contact the Latrobe Consulting Group for advice or implementation guidance: https://latrobe.group/
