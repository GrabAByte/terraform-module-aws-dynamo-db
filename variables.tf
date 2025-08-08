variable "name" {
  type = string
}

variable "billing_mode" {
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

variable "tags" {
  type = map(any)
}
