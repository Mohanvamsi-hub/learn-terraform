
data "aws_ami" "centos_user" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}

data "aws_security_group" "allow-all" {
  name = "allow-all"
}