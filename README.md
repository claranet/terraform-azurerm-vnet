# Azure Virtual Network

Common Azure module to generate a virtual network.

## Prerequisites

* module.az-region.location-short: git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/modules/regions.git?ref=xxx
* module.rg.resource_group_name: git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/modules/rg.git?ref=xxx


## Mandatory Usage

```shell
module "azure-region" {
    source = "git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/modules/regions.git?ref=vX.X.X"

    azure_region = "${var.azure_region}"
}

module "rg" {
    source = "git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/modules/rg.git?ref=vX.X.X"

    location     = "${module.azure-region.location}"
    client_name  = "${var.client_name}"
    environment  = "${var.environment}"
    stack        = "${var.stack}"
}

module "azure-virtual-network" {
    source              = "git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/modules/vnet.git?ref=xxx"
    
    environment         = "${var.environment}"
    location            = "${module.azure-region.location}"
    location-short      = "${module.azure-region.location-short}"
    client_name         = "${var.client_name}"
    stack               = "${var.stack}"
    custom_vnet_name    = "${var.custom_vnet_name}"

    resource_group_name     = "${module.rg.resource_group_name}"
    vnet_cidr               = ["${var.vnet_cidr}"]
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| client_name | Client name/account used in naming | string | - | yes |
| custom_vnet_name | Optional custom virtual network name | string | `` | no |
| environment | Project environment | string | - | yes |
| extra_tags | Extra tags to add | map | `<map>` | no |
| location | Azure region to use | string | - | yes |
| location-short | Short string for Azure location. | string | - | yes |
| resource_group_name | Resource group name | string | - | yes |
| stack | Project stack name | string | - | yes |
| vnet_cidr | The address space that is used by the virtual network | list | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| virtual_network_id | Virtual network generated id |
| virtual_network_location | Virtual network location |
| virtual_network_name | Virtual network name |