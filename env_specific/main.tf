provider "aws" {
  region = "ap-south-1"
  profile = "nihal-terraform"
}

locals {
  env = "${terraform.workspace}"
  ami_env={
      default = "ami_default"
      staging = "ami_staging"
      production = "ami_production"
  }
  amiid = "${lookup(local.ami_env,local.env)}"
}
output "amiid" {
  value = local.amiid
}