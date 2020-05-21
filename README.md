# Terraform Module: Amazon DynamoDB Table (aws-dynamodb)

Terraform module to create/deploy an Amazon DynamoDB table and any related resources

* [Resources](#Resources)
* [Usage](#Usage)
* [Inputs](#Inputs)
* [Outputs](#Outputs)
* [Notes](#Notes)
* [To Do](#To-Do)
* [Additional Documentation](#Additional-Documentation)


## Resources

These types of resources are supported:

### Terraform

* [Amazon DynamoDB](https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html)

### AWS

* [Amazon DynamoDB](https://aws.amazon.com/dynamodb/)


## Usage

```hcl
module "dynamodb_example" {
  source = "git@github.com:hashicorp-terraform-modules/aws-dynamodb.git?ref=v0.0.0"

  name                          = "my-dynamodb-table"
  hash_key                      = "MyHashKey"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| billing\_mode | Controls how services are charged for read and write throughput and how capacity is managed. (valid values: PROVISIONED and PAY\_PER\_REQUEST. | string | PROVISIONED | No |
| encryption | Whether or not to enable encryption at rest using an AWS or Customer managed KMS key. If enabled is 'false' then server-side encryption (SSE) is set to AWS managed (shown as DEFAULT in the AWS console). If enabled is 'true' and no kms_key_arn is specified then SSE is also set to AWS managed (shown as KMS in the AWS console). | bool | true | No |
| hash\_key | Hash key name. | string | N/A | Yes |
| hash\_key\_attributes | Hash key attributes. | map(string) | {} | No |
| name | Name of the DynamoDB table to create. Also used for 'Name' tag. | string | N/A | Yes |
| read\_capacity | (Optional) The number of read units for this table. If the billing_mode is PROVISIONED, this field is required. | number | 20 | No |
| tags | Additional tags to give the DynamoDB table. | map(string) | {} | No |
| write\_capacity | (Optional) The number of write units for this table. If the billing_mode is PROVISIONED, this field is required. | number | 20 | No |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN of the Amazon DynamoDB table created |
| name | The name of the Amazon DynamoDB table created |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Notes

1. This module uses Terraform version > 0.12.x
2. This module does not set up
   - Global Secondary Indexes
   - Local Secondary Indexes
   - Range Keys
   - Additional Attributes
   - Customer managed KMS key usage

## To Do

* Add dynamic GSI and LSI defintions
* Add dynamic range key defintion
* Add dynamic attribute definitions
* Add dynamic Customer managed KMS key usage

## Additional Documentation

- [Terraform Documentation](https://www.terraform.io/docs/index.html)
- [Getting Started with Amazon DynamoDB](https://us-west-2.console.aws.amazon.com/dynamodb/home?region=us-west-2#gettingStarted:)
