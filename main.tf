resource "aws_dynamodb_table" "dynamodb_table" {
  name          = var.name
  billing_mode  = var.billing_mode
  read_capacity = var.read_capacity
  #write_capacity = var.write_capacity
  hash_key  = var.hash_key
  range_key = var.range_key

  dynamic "attribute" {
    for_each = var.attributes
    content {
      name = attribute.value.name
      type = attribute.value.type
    }
  }

  dynamic "ttl" {
    for_each = var.ttl
    content {
      attribute_name = ttl.value.attribute_name
      enabled        = ttl.value.enabled
    }
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
      #write_capacity     = lookup(global_secondary_index.value, "write_capacity", null)
    }
  }

  tags = var.tags
}
