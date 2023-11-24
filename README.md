# terraform-digitalocean-vpc
# Terraform Infrastructure as Code (IaC) - DigitalOcean Module

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Examples](#examples)
- [License](#license)


## Introduction
This Terraform module deploys and configures DigitalOcean resources, providing a standardized way to manage infrastructure components.

## Usage

- Use the module by referencing its source and providing the required variables.
## Example: vpc
    ```hcl
    module "vpc" {
      source      = "git::https://github.com/cypik/terraform-digitalocean-vpc.git?ref=v1.0.0"
      name        = "app"
      environment = "test"
      region      = "blr1"   # Update with your desired region
      ip_range    = "10.10.0.0/16"
    }
    ```

## Module Inputs

- `name`: The name of the application.
- `environment`: The environment (e.g., "test", "production").
- `region`: The DigitalOcean region where resources will be deployed.
- `ip_range`: The IP range for the VPC.

## Module Outputs
- This module currently does not provide any outputs.

## Examples
For detailed examples on how to use this module, please refer to the '[examples](https://github.com/cypik/terraform-digitalocean-vpc/blob/readme/_example)' directory within this repository.



## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/cypik/terraform-digitalocean-vpc/blob/readme/LICENSE) file for details.

## Author
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.
