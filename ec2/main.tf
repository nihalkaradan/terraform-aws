provider "aws"{
    profile = "nihal-terraform"
    region = "ap-south-1"
}
variable "vpcid" {
    type = string
    default = "vpc-5a3fc831"
  
}
variable "amiid" {
    type = string
    default = "ami-010aff33ed5991201"
  
}
resource "aws_security_group" "terraform_ec2_sg" {
    name = "terraform_ec2_sg"
    vpc_id = "${var.vpcid}"
    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
}
resource "aws_instance" "ec2_terraform" {
    ami = "${var.amiid}"
    instance_type = "t2.micro"
    key_name = "terraform"
    security_groups = ["${aws_security_group.terraform_ec2_sg.id}"]
    tags = {
      "Name" = "Terraform ec2 instance"
    }
}