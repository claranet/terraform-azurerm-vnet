# Azure Virtual Network
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/modules/claranet/vnet/azurerm/)

Common Azure module to generate an Azure virtual network.

## Version compatibility

| Module version    | Terraform version | AzureRM version |
|-------------------|-------------------|-----------------|
| >= 3.x.x          | 0.12.x            | >= 2.0          |
| >= 2.x.x, < 3.x.x | 0.12.x            | <  2.0          |
| <  2.x.x          | 0.11.x            | <  2.0          |

## Usage

This module is optimized to work with the [Claranet terraform-wrapper](https://github.com/claranet/terraform-wrapper) tool
which set some terraform variables in the environment needed by this module.
More details about variables set by the `terraform-wrapper` available in the [documentation](https://github.com/claranet/terraform-wrapper#environment).

```hcl
module "azure-region" {
  source  = "claranet/regions/azurerm"
  version = "x.x.x"

  azure_region = var.azure_region
}

module "rg" {
  source  = "claranet/rg/azurerm"
  version = "x.x.x"

  location    = module.azure-region.location
  client_name = var.client_name
  environment = var.environment
  stack       = var.stack
}

module "azure-virtual-network" {
  source  = "claranet/vnet/azurerm"
  version = "x.x.x"

  environment    = var.environment
  location       = module.azure-region.location
  location_short = module.azure-region.location_short
  client_name    = var.client_name
  stack          = var.stack

  resource_group_name = module.rg.resource_group_name

  custom_vnet_name = var.custom_vnet_name
  vnet_cidr        = ["10.10.0.0/16"]
  dns_servers      = ["10.0.0.4", "10.0.0.5"] # Can be empty if not used
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| client\_name | Client name/account used in naming | `string` | n/a | yes |
| custom\_vnet\_name | Optional custom virtual network name | `string` | `""` | no |
| dns\_servers | List of IP addresses of DNS servers | `list(string)` | `[]` | no |
| environment | Project environment | `string` | n/a | yes |
| extra\_tags | Extra tags to add | `map(string)` | `{}` | no |
| location | Azure region to use | `string` | n/a | yes |
| location\_short | Short string for Azure location. | `string` | n/a | yes |
| name\_prefix | Optional prefix for vnet names | `string` | `""` | no |
| resource\_group\_name | Resource group name | `string` | n/a | yes |
| stack | Project stack name | `string` | n/a | yes |
| vnet\_cidr | The address space that is used by the virtual network | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| virtual\_network\_id | Virtual network generated id |
| virtual\_network\_location | Virtual network location |
| virtual\_network\_name | Virtual network name |
| virtual\_network\_space | Virtual network space |

## Related documentation

Terraform resource documentation: [terraform.io/docs/providers/azurerm/r/virtual_network.html](https://www.terraform.io/docs/providers/azurerm/r/virtual_network.html)

Microsoft Azure documentation: [docs.microsoft.com/en-us/azure/virtual-network/virtual-networks-overview](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-networks-overview)
