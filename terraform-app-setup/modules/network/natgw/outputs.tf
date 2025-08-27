output "nat_gateway_id" {
  value       = aws_nat_gateway.this.id
  description = "ID of the NAT Gateway"
}
