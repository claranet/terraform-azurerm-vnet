# Azure Virtual Network

Common Azure module to generate an Azure virtual network.

## Prerequisites

* module.az-region.location-short: `git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/modules/regions.git?ref=xxx`
* module.rg.resource_group_name: `git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/modules/rg.git?ref=xxx`

## Mandatory Usage

```hcl
module "azure-region" {
  source = "git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/modules/regions.git?ref=vX.X.X"

  azure_region = "${var.azure_region}"
}

module "rg" {
  source = "git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/modules/rg.git?ref=vX.X.X"

  location    = "${module.azure-region.location}"
  client_name = "${var.client_name}"
  environment = "${var.environment}"
  stack       = "${var.stack}"
}

module "azure-virtual-network" {
  source = "git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/modules/vnet.git?ref=xxx"

  environment    = "${var.environment}"
  location       = "${module.azure-region.location}"
  location_short = "${module.azure-region.location_short}"
  client_name    = "${var.client_name}"
  stack          = "${var.stack}"

  resource_group_name = "${module.rg.resource_group_name}"

  custom_vnet_name = "${var.custom_vnet_name}"
  vnet_cidr        = ["10.10.0.0/16"]
  dns_servers      = ["10.0.0.4", "10.0.0.5"] # Can be empty if not used
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| client\_name | Client name/account used in naming | string | n/a | yes |
| custom\_vnet\_name | Optional custom virtual network name | string | `""` | no |
| dns\_servers | List of IP addresses of DNS servers | list | `<list>` | no |
| environment | Project environment | string | n/a | yes |
| extra\_tags | Extra tags to add | map | `<map>` | no |
| location | Azure region to use | string | n/a | yes |
| location\_short | Short string for Azure location. | string | n/a | yes |
| name\_prefix | Optional prefix for vnet name | string | `""` | no |
| resource\_group\_name | Resource group name | string | n/a | yes |
| stack | Project stack name | string | n/a | yes |
| vnet\_cidr | The address space that is used by the virtual network | list | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| virtual\_network\_id | Virtual network generated id |
| virtual\_network\_location | Virtual network location |
| virtual\_network\_name | Virtual network name |
| virtual\_network\_space | Virtual network space |

## Related documentation

Terraform resource documentation: [https://www.terraform.io/docs/providers/azurerm/r/virtual_network.html]

Microsoft Azure documentation: [https://docs.microsoft.com/en-us/azure/virtual-network/virtual-networks-overview]
