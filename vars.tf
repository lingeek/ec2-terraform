variable "project_name" {
  type = string
}
variable "region" {
  type = string
}
variable "zone" {
  type = string
}
variable "centos_ami" {
  type = map
  default = {
    us-west-2 = "ami-0382852e154615ca1"

  }
  description = "Custom AMI"
}