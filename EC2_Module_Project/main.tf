provider "aws"{
    profile = "nihal-terraform"
    region = "ap-south-1"
}
module "ec2_module" {
    source = "./ec2_module"
}