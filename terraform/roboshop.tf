
data "aws_ami" "centos_user" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}

variable "inst_type" {
  default = "t3.small"
}

resource "aws_route53_zone" "primary" {
  name = "kmvdevops.shop"
}

resource "aws_instance" "frontend" {
  ami           = data.aws_ami.centos_user.image_id
  instance_type = var.inst_type

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "frontend-dev.kmvdevops.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

