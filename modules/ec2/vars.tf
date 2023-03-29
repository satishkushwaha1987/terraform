variable "testhost_ami" {}
variable "testhost_instance_type" {}
variable "key_name" {}
variable "testhost_instance_id" {}
locals {
  NamePrefix = "${var.company_name}-${var.environment}"
}