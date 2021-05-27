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

resource "aws_s3_bucket_object" "myfirstobject" {
  bucket = "${aws_s3_bucket.mybucket.id}"
  key    = "test.txt"
  source = "../test.txt"
  etag = filemd5("../test.txt")
}
