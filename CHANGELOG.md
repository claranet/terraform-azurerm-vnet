## 7.1.0 (2024-10-03)

### Features

* use Claranet "azurecaf" provider cffd415

### Documentation

* update README badge to use OpenTofu registry 498258b

### Miscellaneous Chores

* **deps:** update dependency opentofu to v1.7.3 37ce14d
* **deps:** update dependency opentofu to v1.8.1 ae5def9
* **deps:** update dependency opentofu to v1.8.2 8e3c709
* **deps:** update dependency pre-commit to v3.8.0 f815427
* **deps:** update dependency terraform-docs to v0.19.0 a49d676
* **deps:** update dependency tflint to v0.51.2 ddf5d0b
* **deps:** update dependency tflint to v0.52.0 8adff37
* **deps:** update dependency trivy to v0.52.1 43fa7cf
* **deps:** update dependency trivy to v0.52.2 b692a12
* **deps:** update dependency trivy to v0.53.0 1c496ef
* **deps:** update dependency trivy to v0.54.1 da37871
* **deps:** update dependency trivy to v0.55.0 9f40456
* **deps:** update dependency trivy to v0.55.1 4107bf0
* **deps:** update dependency trivy to v0.55.2 47eea0b
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.17.0 9277450
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.18.0 9543c5c
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.0 5736b33
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.1 5a244fa
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.3 93799be
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.93.0 fa393ee
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.0 6a04b15
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.1 214eb2f
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.2 9cddfe0
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.3 e9f09c4
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.95.0 130b662
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.96.0 c503d64
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.96.1 1defee5
* **deps:** update tools b957637
* **deps:** update tools 445fbd7

## 7.0.0 (2024-06-06)


### ⚠ BREAKING CHANGES

* AzureRM minimum version is now `v3.0`

### Features

* bump minimum version of Terraform to `v1.3` 60e0d36


### Continuous Integration

* **AZ-1391:** enable semantic-release [skip ci] 159cf36
* **AZ-1391:** update semantic-release config [skip ci] e5ebd3e


### Miscellaneous Chores

* **deps:** add renovate.json 2ea8a08
* **deps:** enable automerge on renovate 780b52d
* **deps:** update dependency opentofu to v1.7.0 d14cdd4
* **deps:** update dependency opentofu to v1.7.1 d4dbdcc
* **deps:** update dependency opentofu to v1.7.2 d6dd554
* **deps:** update dependency pre-commit to v3.7.1 9ae6bec
* **deps:** update dependency terraform-docs to v0.18.0 2b57d39
* **deps:** update dependency tflint to v0.51.0 ea0711d
* **deps:** update dependency tflint to v0.51.1 030ef1c
* **deps:** update dependency trivy to v0.50.2 85d9a75
* **deps:** update dependency trivy to v0.50.4 a3cd503
* **deps:** update dependency trivy to v0.51.0 0d5f37c
* **deps:** update dependency trivy to v0.51.1 3d34937
* **deps:** update dependency trivy to v0.51.2 f24513e
* **deps:** update dependency trivy to v0.51.4 84ddfe7
* **deps:** update dependency trivy to v0.52.0 b40ba4f
* **deps:** update renovate.json f13f3a3
* **pre-commit:** update commitlint hook d0c241d
* **release:** remove legacy `VERSION` file 8f21e55
* update CHANGELOG 352ba3e

# v5.2.0/v6.0.0 - 2022-11-24

Changed
  * AZ-908: Use the new data source for CAF naming (instead of resource)

# v5.1.0 - 2022-03-18

Added
  * AZ-615: Add an option to enable or disable default tags

# v5.0.0 - 2022-01-13

Breaking
  * AZ-515: Option to use Azure CAF naming provider to name resources
  * AZ-515: Require Terraform 0.13+

Changed
  * AZ-572: Revamp examples and improve CI

# v3.2.1/v4.2.1 - 2021-08-20

Changed
  * AZ-532: Revamp README with latest `terraform-docs` tool

# v3.2.0/v4.2.0 - 2021-01-18

Breaking
  * AZ-416: Change VNET name to include Stack name by default

# v3.1.0/v4.1.0 - 2020-12-15

Changed
  * AZ-398: Force lowercases on default generated name

# v3.0.1/v4.0.0 - 2020-10-20

Changed
  * AZ-273: Update README and CI, module compatible Terraform 0.13+ (now requires Terraform 0.12.26 minimum version)

# v3.0.0 - 2020-07-03

Added
  * AZ-206: Module both compatible with AzureRM provider v1.x and v2.x
  * AZ-209: Include Gitlab CI template

# v2.0.1 - 2019-09-27

Added
  * AZ-119: Add CONTRIBUTING.md doc and `terraform-wrapper` usage with the module

Changed
  * AZ-119: Revamp README and publish this module to Terraform registry

# v2.0.0 - 2019-09-06

Breaking
  * AZ-94: Terraform 0.12 / HCL2 format

Added
  * AZ-118: Add LICENSE, NOTICE & Github badges

# v0.2.1 - 2019-07-12

Added
  * TER-407: Add custom variable to vnet name

# v0.2.0 - 2019-05-14

Changed
  * AZ-88: Normalize `location_short` variable

# v0.1.0 - 2019-04-01

Added
  * AZ-26: First Release. Azure Vnet
