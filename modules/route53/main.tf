resource "aws_route53_zone" "main" {
    name = var.domain_name

    tages = {
      Environment = var.environment
      ManagedBy = "Terraform"
    }
}