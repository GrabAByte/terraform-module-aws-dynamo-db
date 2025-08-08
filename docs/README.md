<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.dynamodb_tables](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attributes"></a> [attributes](#input\_attributes) | List of DynamoDB table attributes | <pre>list(object({<br/>    name = string<br/>    type = string<br/>  }))</pre> | n/a | yes |
| <a name="input_global_secondary_index"></a> [global\_secondary\_index](#input\_global\_secondary\_index) | Secondary index attributes | <pre>list(object({<br/>    name = string<br/>    type = string<br/>  }))</pre> | n/a | yes |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | TTL attributes | <pre>list(object({<br/>    name = string<br/>    type = string<br/>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->