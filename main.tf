resource "aws_dynamodb_table" "dynamodb_table" {
  name           = var.name
  billing_mode   = var.billing_mode   # "PROVISIONED"
  read_capacity  = var.read_capacity  # 20
  write_capacity = var.write_capacity # 20
  hash_key       = var.hash_key       # "UserId"
  range_key      = var.range_key      # "GameTitle"

  attribute              = var.attributes
  global_secondary_index = var.global_secondary_index
  ttl {
    attribute_name = var.ttl.attribute_name
    enabled        = var.ttl.enabled
  }
  tags = var.tags
}
