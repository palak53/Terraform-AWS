output "public_ip" {
  value       = aws_instance.this.public_ip
  description = "Public IP of the instance"
}
