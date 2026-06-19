output "vpc_id" {
    value = aws_vpc.this.id 
}

output "private_app_subnet_ids" {
    value = values(aws_subnet.private_app)[*].id
}