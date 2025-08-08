resource "aws_dynamodb_table" "dynamodb_tables" {
  name           = var.name
  billing_mode   = var.billing_mode   # "PROVISIONED"
  read_capacity  = var.read_capacity  # 20
  write_capacity = var.write_capacity # 20
  hash_key       = var.hash_key       # "UserId"
  range_key      = var.range_key      # "GameTitle"

  attribute              = var.attributes
  ttl                    = var.ttl
  global_secondary_index = var.global_secondary_index
  tags                   = var.tags
}
