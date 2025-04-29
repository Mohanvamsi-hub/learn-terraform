
data "aws_ami" "ami_data" {
  executable_users = ["self"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners = ["ami-0b4f379183e5706b9"]
}

variable "inst_type" {
  default = "t3.small"
}

resource "aws_instance" "frontend" {
  ami           = data.aws_ami.ami_data.image_id
  instance_type = var.inst_type

  tags = {
    Name = "frontend"
  }
}