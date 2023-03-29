output "vpc_cidr" {
  value = module.vpc.vpc_cidr
}
variable "environment" {
  default = "sandbox"
}
variable "company_name" {
  default = "satish"
}
variable "common_tags" {
  type = map(string)
  default = {
    TechOwner      = "satish",
    TechOwnerEmail = "satishkushwaha1987@gmail.com"
    environment    = "sandbox"
  }
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "public_subnet" {
  default = "10.0.1.0/26"
}
locals {
  NamePrefix = "${var.company_name}-${var.environment}"
}
variable "testhost_instance_type" {
  default = "t2.micro"
}
variable "testhost_ami" {
  default = "ami-0960ab670c8bb45f3"
}
variable "key_pair" {
  default = "dockertest"
}
