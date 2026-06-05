terraform {
  required_version = ">= 1.0.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  
  # Optional: Add default tags to ALL resources
  default_tags {
    tags = {
      Project     = "TerraformLearning"
      ManagedBy   = "Terraform"
      Owner       = "YourName"
      Day         = "Day01"
    }
  }
}
