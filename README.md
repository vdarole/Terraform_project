# Terraform Multi-Environment Provisioning

This repository contains a Terraform project designed to provision resources across **two different environments** (e.g., `uat`, `prod`) on azure cloud using:

- **Terraform Workspaces** for environment separation
- **Remote Backend (Azure Storage Account)** to manage environment-specific state files
- **Azure DevOps Pipelines** for automated provisioning and teardown

---

## 🚀 Project Overview

- Uses **Terraform Workspaces** to manage multiple environments cleanly.
- Leverages a **remote backend (Azure Blob Storage)** to securely store and manage `.tfstate` files.
- Fully integrated with **Azure DevOps CI/CD** pipeline for automation.
- Credentials (service principal) are **securely stored in Azure DevOps Library** as variable groups.
- Includes two primary pipeline stages:
  - **Apply** – Provisions infrastructure
  - **Destroy** – Tears down infrastructure

---

## ⚠️ Prerequisites

Before using this project:

- Ensure the **backend storage account and container** have already been provisioned using a bootstrap Terraform project.  
  > 🔗 Refer to the [Terraform Backend Resource Provisioning](#) repository for bootstrapping instructions.

---

## 🔐 Credential Management

- This project **does not store service principal credentials** in any `*.tfvars` file.
- Credentials are securely stored in **Azure DevOps Library** as a **Variable Group**.
- These variables are referenced in the `azure-pipelines.yml` pipeline configuration.

---

## 🔧 Azure DevOps Pipeline Configuration

The pipeline is designed with two key stages:

### 1. **Apply Stage**
- Initializes the Terraform configuration.
- Selects or creates the workspace based on the passed environment.
- Generates and applies the execution plan.
- Stores the state file remotely in the Azure storage container, separated per environment.

### 2. **Destroy Stage**
- Selects the appropriate workspace.
- Destroys the provisioned infrastructure for the specified environment.

---

## 🧩 Parameters

Both **environment selection** and **action type** (apply/destroy) are passed as parameters in the Azure DevOps pipeline.

This provides flexibility for users to target specific environments with a chosen action.

---

## 📌 Best Practices Followed

- No hardcoded credentials or secrets in source code.
- Uses `terraform.workspace` for dynamic backend configuration.
- Implements environment-agnostic and reusable infrastructure definitions.
- Keeps pipeline logic clean and parameter-driven.

---
