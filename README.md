# Azure Naming Tool Terraform Deployment Guide

## Introduction

This guide provides step-by-step instructions for deploying the Azure Naming Tool infrastructure using Terraform. This approach allows for Infrastructure as Code (IaC) principles, enabling automated, consistent, and repeatable deployments of the necessary Azure resources.

## Prerequisites

Before proceeding, ensure you have the following installed and configured:

*   **Azure Subscription**: An active Azure subscription.
*   **Azure CLI**: Installed and configured for authentication to your Azure subscription. You can download it from [https://docs.microsoft.com/en-us/cli/azure/install-azure-cli](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli).
*   **Terraform**: Installed on your local machine. You can download it from [https://www.terraform.io/downloads.html](https://www.terraform.io/downloads.html).
*   **Azure Naming Tool Source Code**: The source code for the Azure Naming Tool (e.g., from the GitHub repository you forked earlier).

## Deployment Steps

### 1. Authenticate to Azure

Open your terminal or command prompt and log in to your Azure account using the Azure CLI:

```bash
az login
```

Follow the on-screen prompts to complete the authentication process.

### 2. Prepare Terraform Files

Ensure you have the `main.tf`, `variables.tf`, and `outputs.tf` files in a dedicated directory (e.g., `/home/ubuntu/AzureNamingTool_Terraform`).

### 3. Initialize Terraform

Navigate to the directory containing your Terraform files and initialize the Terraform working directory. This command downloads the necessary Azure provider plugins.

```bash
cd /home/ubuntu/AzureNamingTool_Terraform
terraform init
```

### 4. Review the Deployment Plan

Generate an execution plan to see what actions Terraform will perform. This step is crucial for reviewing the infrastructure changes before they are applied.

```bash
terraform plan
```

Review the output carefully to ensure that the resources to be created match your expectations.

### 5. Apply the Terraform Configuration

Apply the Terraform configuration to deploy the resources to your Azure subscription. You will be prompted to confirm the action by typing `yes`.

```bash
terraform apply
```

### 6. Deploy the Azure Naming Tool Application

Once the Azure App Service is provisioned by Terraform, you need to deploy the Azure Naming Tool application code to it. You have several options:

*   **Manual Deployment**: You can use Visual Studio, Azure CLI, or FTP to publish the application code to the App Service.
*   **GitHub Actions (Recommended)**: Configure a GitHub Action workflow in your forked repository to automatically build and deploy the application code to the newly created Azure App Service. This is the same method described in the previous deployment guide.
*   **Azure DevOps Pipelines**: If you use Azure DevOps, you can set up a pipeline to deploy the application.

For GitHub Actions, refer to the previous deployment guide section "5. Enable GitHub Action" for detailed steps on configuring the GitHub Action to deploy to your Azure Web App.

### 7. Configure the Azure Naming Tool

After the application code is deployed, access the Azure Naming Tool via its URL (obtained from `terraform output app_service_url`) and configure it through its administrative interface as described in the "Azure Naming Tool Configuration Guide".

