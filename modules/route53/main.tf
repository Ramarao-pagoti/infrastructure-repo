resource "aws_route53_zone" "main" {
    name = "mybanking.shop"

    tages = {
      Environment = var.environment
      ManagedBy = "Terraform"
    }
}