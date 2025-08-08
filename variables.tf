variable "name" {
  type = string
}

variable "billing_mode" {
  type = string
}

variable "read_capacity" {
  type = string
}

variable "write_capacity" {
  type = string
}

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
    name = string
    type = string
  }))
  description = "TTL attributes"
}

variable "global_secondary_index" {
  type = list(object({
    name = string
    type = string
  }))
  description = "Secondary index attributes"
}
