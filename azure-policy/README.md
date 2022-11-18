# ARJ-Stack: Terraform Azure -> Policy

This Example configuration is a demonstration of [Module: Terraform Azure Policy Framework](https://github.com/arjstack/terraform-azure-policy) utilization to create Policies and their assignments on different scopes.

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Azure Policy | `arjstack-enforce-tag` |  |
| 2 | Custom Policy Assignment |  | Custom Policy `arjstack-enforce-tag` assignment on Subscription `e0144b68-50de-4ef2-a45a-e905392f8345` |
| 3 | Custom Policy Assignment |  | Custom Policy `arjstack-enforce-tag` assignment on Resource Group `dev` |
| 4 | Builtin Policy Assignment |  | Inbuilt Policy `e56962a6-4747-49cd-b67b-bf8b01975c4c` assignment on Subscription `e0144b68-50de-4ef2-a45a-e905392f8345` |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.14.0 |

## Usages

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan --var-file=dev.tfvars
$ terraform apply --var-file=dev.tfvars
```

Note: Select the correct the AWS provider configurations in `provider.tf` file

## Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-azure-examples/graphs/contributors).
