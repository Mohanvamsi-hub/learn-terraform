
data "aws_ami" "centos_user" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}

variable "inst_type" {
  default = "t3.small"
}

resource "aws_instance" "frontend" {
  ami           = data.aws_ami.centos_user.image_id
  instance_type = var.inst_type

  tags = {
    Name = "frontend"
  }
}