resource "aws_s3_bucket" "first_bucket" {
  # bucket name must be globally unique across ALL of AWS
  bucket = "terraform-learning-day01-yourname-2024"
  
  tags = {
    Name        = "TerraformFirstBucket"
    Environment = "Learning"
    Day         = "Day01"
  }
}

# Block public access on the bucket (best practice)
resource "aws_s3_bucket_public_access_block" "first_bucket_pab" {
  bucket = aws_s3_bucket.first_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
