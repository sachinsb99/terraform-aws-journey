provider "aws" {
  region = "ap-south-1"
  
  # Authentication using environment variables or ~/.aws/credentials
  # Never hardcode credentials here!
  
  default_tags {
    tags = {
      Project     = "TerraformLearning"
      ManagedBy   = "Terraform"
      Environment = "Dev"
    }
  }
}








