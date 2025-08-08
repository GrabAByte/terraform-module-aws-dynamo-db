resource "aws_dynamodb_table" "dynamodb_table" {
  name           = var.name
  billing_mode   = var.billing_mode   # "PROVISIONED"
  read_capacity  = var.read_capacity  # 20
  write_capacity = var.write_capacity # 20
  hash_key       = var.hash_key       # "UserId"
  range_key      = var.range_key      # "GameTitle"

  ttl {
    attribute_name = var.ttl.attribute_name
    enabled        = var.ttl.enabled
  }

  dynamic "global_secondary_index" {
    for_each = var.gsi
    content {
      name               = global_secondary_index.value.name
      hash_key           = global_secondary_index.value.hash_key
      range_key          = lookup(global_secondary_index.value, "range_key", null)
      projection_type    = global_secondary_index.value.projection_type
      non_key_attributes = lookup(global_secondary_index.value, "non_key_attributes", null)
      read_capacity      = lookup(global_secondary_index.value, "read_capacity", null)
      write_capacity     = lookup(global_secondary_index.value, "write_capacity", null)
    }
  }

  tags = var.tags
}
