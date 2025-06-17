resource "aws_instance" "ec2name" {
  ami           = data.aws_ami.centos_user.image_id
  instance_type = var.inst_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]

  tags = {
    Name = var.env != "" ? "${var.nameofservers["name"]}"-"${var.env}" : var.nameofservers
  }

}

resource "null_resource" "followupresource" {

  depends_on = [aws_instance.ec2name, aws_route53_record.records]
  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = aws_instance.ec2name.private_ip
  }

  provisioner "remote-exec" {
    inline = [
      "rm -rf roboshop-shell",
      "git clone https://github.com/Mohanvamsi-hub/roboshop-shell.git",
      "cd roboshop-shell",
      "echo ${var.nameofservers}.sh  ${var.password}",
      "sudo bash ${var.nameofservers}.sh  ${var.password}"
    ]
  }
}


resource "aws_route53_record" "records" {

  zone_id = "Z104617622FGO6B5DAYVE"
  name    = "${var.nameofservers}-dev.kmvdevops.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2name.private_ip]
}