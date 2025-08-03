# Azure Naming Tool Deployment Guide

## Introduction

This document provides a comprehensive, step-by-step guide for deploying the Azure Naming Tool as an Azure Web App using GitHub Actions. This method offers a secure, scalable, and automated solution for managing your Azure naming conventions.

## Prerequisites

Before you begin, ensure you have the following:

*   An Azure subscription.
*   A GitHub account.
*   Basic understanding of Azure Web Apps and GitHub Actions.

## Deployment Steps




### 1. Fork the Azure Naming Tool Repository

1.  Navigate to the [Azure Naming Tool GitHub repository](https://github.com/mspnp/AzureNamingTool).
2.  Click the **Fork** option in the top-right corner of the page.
3.  Select your desired **Owner** and **Repository name**, then click **Create fork**.
4.  Once forked, navigate to your new repository.
5.  Go to the `.github/workflows` directory.
6.  Open the `.deploy-azure-naming-tool-to-azure-webapps-dotnet-core.yml` file.
7.  Review the instructions within this file for creating the necessary GitHub secrets. These secrets are crucial for the GitHub Action to successfully deploy the application to your Azure Web App.




### 2. Create an Azure Web App

1.  Log in to the [Azure Portal](https://portal.azure.com/).
2.  Create a new Azure Web App.
3.  For the **Publish** option, select **Code**.
4.  For the **Runtime stack**, select **.NET 8**.
5.  After the Web App is created, download the **Publish Profile**. This profile will be used to create a GitHub secret.

    You can download the Publish Profile using Azure PowerShell with the following command:
    ```powershell
    Get-AzWebApp -Name <webappname> | Get-AzWebAppPublishingProfile -OutputFile <filename> | Out-Null
    ```




### 3. Enable Azure Web App Authentication

1.  In the Azure Portal, navigate to your Azure Web App.
2.  Go to the **Authentication** blade.
3.  Select **Add identity provider**.
4.  In the **Identity provider** section, choose **Microsoft**.
5.  Enter a desired **Name** for the identity provider. Other options can typically be left as default.
6.  Click **Add**.




### 4. Create GitHub Secrets

1.  In your forked GitHub repository, click on **Settings** in the top menu.
2.  In the left-hand menu, click on **Secrets**.
3.  Click **New repository secret**.
4.  For the **Name**, enter `AZURE_WEBAPP_PUBLISH_PROFILE`.
5.  For the **Value**, paste the content of the **Publish Profile** you downloaded earlier from your Azure Web App.
6.  Click **Add secret**.
7.  Repeat steps 3-6 to create another secret:
    *   **Name**: `AZURE_WEBAPP_NAME`
    *   **Value**: The name of your Azure Web App.




### 5. Enable GitHub Action

1.  In your GitHub repository, click on the **Actions** tab.
2.  If prompted, click on **I understand my workflows, go ahead and enable them**.
3.  In the left navigation, select the workflow named **Azure Naming Tool - Build and deploy to an Azure Web App**.
4.  Click **Run workflow**.
5.  Monitor the workflow to ensure it completes successfully.
6.  Once the workflow is complete, access your Azure Web App URL to confirm that the Azure Naming Tool has been successfully deployed.

    **Note:** If your website does not load, verify that the startup command for your Azure Web App is set to `dotnet AzureNamingTool.dll`.



