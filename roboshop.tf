


resource "aws_instance" "ec2name" {
  ami           = data.aws_ami.centos_user.image_id
  instance_type = var.inst_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]
  for_each = var.nameofservers

  tags = {
    Name = each.value["name"]
  }
}

resource "aws_route53_record" "frontend" {
  for_each = var.nameofservers

  zone_id = "Z104617622FGO6B5DAYVE"
  name    = "${each.value["name"]}-dev.kmvdevops.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2name[each.value["name"]].private_ip]
}

