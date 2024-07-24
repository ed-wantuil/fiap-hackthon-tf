resource "aws_dynamodb_table" "payment_table" {
  name           = "agendamento"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}
