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
