output "vpc_id" {
  value       = aws_vpc.this.id
  description = "ID of the created VPC"
}
