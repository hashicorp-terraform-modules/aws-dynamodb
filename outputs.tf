output "arn" {
  description = "The ARN of the table created"
  value       = aws_dynamodb_table.this.arn
}

output "name" {
  description = "The name of the table created"
  value       = aws_dynamodb_table.this.id
}
