locals {
  common_tags = {
    Project = "ecommerce-platform"
    Environment = var.environment
    managed_by = "Terraform"
  }

  public_subnets = {
    public-a = {
      az   = var.availability_zones[0]
      subnet_num = 1
    }
      public-b = {
          az   = var.availability_zones[1]
          subnet_num = 2
      }
  }

  private_app_subnets = {
    app-a = {
      az   = var.availability_zones[0]
      subnet_num = 11
    }
    app-b = {
      az   = var.availability_zones[1]
      subnet_num = 12
    }
  }

  private_db_subnets = {
    db-a = {
      az   = var.availability_zones[0]
      subnet_num = 21
    }
    db-b = {
      az   = var.availability_zones[1]
      subnet_num = 22
    }
  }
}