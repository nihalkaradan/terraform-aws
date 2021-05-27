provider "aws"{
  profile = "nihal-terraform"
  region = "ap-south-1"
}
//string example
variable "firststring"{
  type = string
  default = "my first string"
}
output "firstoutput" {
  value = "${var.firststring}"
}
//map example
variable "mapexample" {
  type = map
  default = {
    "useast" = "ami1"
    "uswest" = "ami2"
  }
}
output "mapoutput" {
  value = "${var.mapexample["useast"]}"
}
//List example
variable "sg" {
  type = list
  default = [
    "sg1","sg2"
  ]
}
output "sgoutput" {
  value = "${var.sg}"
}
//boolean
variable "testbool" {
  default = true
}
output "testbool" {
  value = "${var.testbool}"
}
//input from console
variable "testInput" {
  type = string
}
output "testInput" {
  sensitive = true
  value = "${var.testInput}"
}