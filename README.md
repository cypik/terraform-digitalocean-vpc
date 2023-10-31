# terraform-digitalocean-vpc
# Terraform Infrastructure as Code (IaC) - DigitalOcean Module

## Overview
This Terraform module deploys and configures DigitalOcean resources, providing a standardized way to manage infrastructure components.

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed
- DigitalOcean API token configured

## Usage

1. Ensure you have the required provider configured in your Terraform environment.

    ```hcl
    provider "digitalocean" {}
    ```

2. Use the module by referencing its source and providing the required variables.

    ```hcl
    module "vpc" {
      source      = "./.."  # Update with the correct path to the module
      name        = "app"
      environment = "test"
      region      = "blr1"   # Update with your desired region
      ip_range    = "10.10.0.0/16"
    }
    ```

3. Run `terraform init` and `terraform apply` to deploy the resources.

## Module Inputs

- `name`: The name of the application.
- `environment`: The environment (e.g., "test", "production").
- `region`: The DigitalOcean region where resources will be deployed.
- `ip_range`: The IP range for the VPC.

## Module Outputs

- This module currently does not provide any outputs.

 

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/opz0/terraform-digitalocean-vpc/blob/readme/LICENSE) file for details.
