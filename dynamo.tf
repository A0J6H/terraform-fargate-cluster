resource "aws_dynamodb_table" "basic-table-hahtech" {
  name           = var.dynamo_name
  billing_mode   = "PROVISIONED"
  read_capacity  = var.dynamo_write
  write_capacity = var.dynamo_write
  hash_key       = "table_id"

  attribute {
    name = "postcode"
    type = "S"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = true
  }
}