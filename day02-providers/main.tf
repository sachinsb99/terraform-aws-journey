resource "random_id" "bucket_suffix" {
  byte_length = 4
}

# S3 bucket in primary region (us-east-1)
resource "aws_s3_bucket" "primary_bucket" {
  bucket = "tf-learn-primary-${random_id.bucket_suffix.hex}"
  
  tags = {
    Name   = "PrimaryBucket"
    Region = "ap-south-1"
  }
}
