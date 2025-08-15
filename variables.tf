variable "name" {
  type        = string
  description = "The name of the Dynamo DB table"
}

variable "billing_mode" {
  type        = string
  description = "The billing mode for the database table"
}

variable "hash_key" {
  type        = string
  description = "The Dynamo DB table primary key"
}

variable "range_key" {
  type        = string
  description = "The Dynamo DB table sort key"
}

variable "attributes" {
  type = list(object({
    name = string
    type = string
  }))
  description = "List of DynamoDB table attributes"
}

variable "tags" {
  type        = map(any)
  description = "The project tags"
}
