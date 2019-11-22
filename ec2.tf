resource "aws_instance" "test-project" {
  ami = "var.centos_ami"
  instance_type = "t2.micro"
}
output "test-project-ip" {
  value = "${aws_instance.test-project.public_ip}"
}