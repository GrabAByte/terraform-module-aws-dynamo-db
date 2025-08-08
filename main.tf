resource "aws_dynamodb_table" "dynamodb_tables" {
  for_each = var.tables
  name           = each.key
  billing_mode   = each.value.billing_mode # "PROVISIONED"
  read_capacity  = each.value.read_capacity # 20
  write_capacity = each.value.write_capacity # 20
  hash_key       = each.value.hash_key # "UserId"
  range_key      = each.value.range_key # "GameTitle"

  # attribute = each.value.attribute
  attribute {
    name = "date"
    type = "S"
  }

  attribute {
    name = "object"
    type = "S"
  }

  # ttl = each.value.ttl
  ttl {
    attribute_name = "TimeToExist"
    enabled        = true
  }

  # gloabal_secondary_index = each.value.global_secondary_index
  global_secondary_index {
    name               = "GameTitleIndex"
    hash_key           = "GameTitle"
    range_key          = "TopScore"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["UserId"]
  }

  tags = var.tags
}
