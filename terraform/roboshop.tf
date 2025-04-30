
data "aws_ami" "centos_user" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}

variable "inst_type" {
  default = "t3.small"
}

variable "nameofservers" {
  default = ["frontend", "mongodb", "catalogue","redis","user","cart","mysql","shipping","rabbitmq","payment"]
}

resource "aws_instance" "ec2name" {
  ami           = data.aws_ami.centos_user.image_id
  instance_type = var.inst_type

  count = length(var.nameofservers)

  tags = {
    Name = var.nameofservers[count.index]
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z104617622FGO6B5DAYVE"
  name    = "${var.nameofservers[count.index]}-dev.kmvdevops.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2name.private_ip]
}

