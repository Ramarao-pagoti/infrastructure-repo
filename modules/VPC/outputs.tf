output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.this.id
  }

output "dev-public-a"   {
  description = "Public Subnet in AZ A"
  value       = aws_subnet.public["us-west-2a"].id
}

output "dev-public-b" {
  description = "Public Subnet in AZ B"
  value       = aws_subnet.public["us-west-2b"].id
}

output "dev-private-app-a" {
  description = "Private App Subnet in AZ A"
  value       = aws_subnet.private_app["us-west-2a"].id
}

output "dev-private-app-b" {
  description = "Private App Subnet in AZ B"
  value       = aws_subnet.private_app["us-west-2b"].id
}

output "dev-private-db-a" {
  description = "Private DB Subnet in AZ A"
  value       = aws_subnet.private_db["us-west-2a"].id
}

output "dev-private-db-b" {
  description = "Private DB Subnet in AZ B"
  value       = aws_subnet.private_db["us-west-2b"].id
}