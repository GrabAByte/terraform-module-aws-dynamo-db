variable "name" {
  type = string
}

variable "billing_mode" {
  type = string
}

# variable "read_capacity" {
#   type = string
# }

# variable "write_capacity" {
#   type = string
# }

variable "hash_key" {
  type = string
}

variable "range_key" {
  type = string
}

variable "attributes" {
  type = list(object({
    name = string
    type = string
  }))
  description = "List of DynamoDB table attributes"
}

variable "ttl" {
  type = list(object({
    attribute_name = string
    enabled        = bool
  }))
  description = "TTL attributes"
}

variable "gsi" {
  type = list(object({
    name               = string
    hash_key           = string
    range_key          = optional(string)
    projection_type    = string
    non_key_attributes = optional(list(string))
    #read_capacity      = optional(number)
    write_capacity = optional(number)
  }))
  description = "List of global secondary indexes for the DynamoDB table"
}

variable "tags" {
  type = map(any)
}
