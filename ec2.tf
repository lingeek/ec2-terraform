provider "aws" {
  region                  = "us-west-2"
  shared_credentials_file = "/home/jenkins/.aws/credentials"
  profile                 = "terraform-prod"
}

resource "aws_instance" "test-project" {
  ami = "var.centos_ami"
  instance_type = "t2.micro"
}
output "test-project-ip" {
  value = "${aws_instance.test-project.public_ip}"
}