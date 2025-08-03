# Azure Naming Tool Configuration Guide

## Introduction

This guide provides detailed instructions on how to configure the Azure Naming Tool to align with your organization's specific naming conventions and best practices. Proper configuration is essential to leverage the tool's full potential in automating naming conventions and preventing inconsistencies.

## Key Configuration Areas

The Azure Naming Tool primarily uses JSON files for its configuration. These files define the various components that make up your naming conventions, such as resource types, environments, locations, and custom components.




### 1. Understanding the Configuration Files

The core of the Azure Naming Tool's configuration resides in a set of JSON files located in the `repository` directory of the application. When the application is deployed, these files are copied to the `settings` folder, which the application then uses for its operations. Any changes made through the Admin interface of the tool will modify the files in the `settings` folder.

Here's a breakdown of the key configuration files:

*   `adminusers.json`: Defines the administrative users for the tool.
*   `appsettings.json`: Contains general application settings.
*   `customcomponents.json`: Allows you to define custom naming components specific to your organization.
*   `namePolicyDefinition.json`: This is a critical file that defines the overall naming policy, including the order and structure of naming components.
*   `resourcecomponents.json`: Defines various components used in resource names, such as application types, tiers, etc.
*   `resourcedelimiters.json`: Specifies the delimiters used between naming components (e.g., hyphens, underscores).
*   `resourceenvironments.json`: Defines the different environments (e.g., `dev`, `test`, `prod`).
*   `resourcefunctions.json`: Defines functions or roles for resources.
*   `resourcelocations.json`: Lists the Azure regions or locations.
*   `resourceorgs.json`: Defines organizational units or departments.
*   `resourceprojappsvcs.json`: Defines project, application, and service components.
*   `resourcetypes.json`: Contains definitions for various Azure resource types and their corresponding short codes.
*   `resourceunitdepts.json`: Defines business units or departments.




### 2. Configuring the Tool via the Admin Interface

The Azure Naming Tool provides a user-friendly web interface for administrators to manage and update the naming conventions. This is the recommended method for most configuration changes.

**Initial Setup:**

Upon the first launch of the application, you will be prompted to set an Admin password. This password is required to access the administrative sections of the tool.

**Accessing the Admin Interface:**

1.  Once the tool is deployed and running, navigate to its URL in your web browser.
2.  Look for an 'Admin' or 'Configuration' link/section in the navigation.
3.  Enter the Admin password when prompted.

**Configuration Options within the Admin Interface:**

The Admin interface allows you to:

*   **Manage Resource Types:** Add, edit, or remove Azure resource types and their associated short codes.
*   **Define Naming Components:** Configure custom components, environments, locations, organizations, projects, and other elements that form your naming convention.
*   **Set Delimiters:** Choose the delimiters (e.g., `-`, `_`) that separate components in the generated names.
*   **Reset Configuration:** The Admin interface also provides an option to 'reset' the configuration. This action copies the default JSON files from the `repository` folder back to the `settings` folder, effectively reverting any changes made through the UI or direct file edits.
*   **API Key Management:** The API requires an API Key for all executions. A default GUID will be generated on first launch. This value can be updated in the Admin section.



