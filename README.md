# DevFlow

This project demonstrates a complete DevOps flow using GitOps principles,
showcasing how to integrate continuous integration and continuous delivery
(CI/CD) pipelines with modern cloud-native tools.
The goal is to automate and streamline the deployment and infrastructure
management process using a Git-based workflow,
ensuring reproducibility, scalability, and better collaboration.

Leveraging tools such as:

* **GitHub** – as the central repository for code and CI/CD integration
* **OpenTofu** – for declarative infrastructure management in the cloud
* **Azure** – as the cloud infrastructure provider (IaaS)
* **Azure Blob Storage** – for storing the state (tfstate)
* **GitHub Actions** – for CI/CD execution
* **Prometheus + Grafana** – for monitoring and visualization
* **ArgoCD + Helm** – for deploying applications to Kubernetes in a GitOps model

The project follows a **monorepo** approach, with all infrastructure,
configuration, and application manifests stored in a single repository.

## Usage

Work in progress

## Configuration

Work in progress

## Requirements

* **Azure account** – For provisioning cloud infrastructure (IaaS) and using Azure Blob Storage.
* **OpenTofu** – Version v1.9.0 for managing infrastructure as code.
* **Prometheus** – For monitoring.
* **Grafana** – For visualizing metrics.
* **ArgoCD** – For Kubernetes application deployment.
* **Helm** – For packaging Kubernetes applications.
* **Kubernetes cluster** – For deploying applications.

## License

This project is licensed under the MIT License – see the [LICENSE](LICENSE)
file for details. You are free to use, modify, and distribute
the project under the terms of this license.

