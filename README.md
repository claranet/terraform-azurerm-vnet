# Azure Virtual Network

Common Azure module to generate a virtual network.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| client_name | Client name/account used in naming | string | - | yes |
| custom_vnet_name | Optional custom virtual network name | string | `` | no |
| environment | Project environment | string | - | yes |
| location | Azure region to use | string | - | yes |
| rg_name | Resource group name | string | - | yes |
| stack | Project stack name | string | - | yes |
| vnet_cidr | The address space that is used by the virtual network | list | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| virtual_network_id | Virtual network generated id |
| virtual_network_location | Virtual network location |
| virtual_network_name | Virtual network name |