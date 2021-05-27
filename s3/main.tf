provider "aws"{
  profile = "nihal-terraform"
  region = "ap-south-1"
}
resource "aws_s3_bucket" "mybucket"{
  bucket = "my-tf-test-bucket-1239000"
  acl = "private"
  tags = {
    Environment = "Dev"
}	
}
