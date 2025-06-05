terraform {
  backend "s3" {
    bucket = "devops-b72-id1"
    key = "roboshop/dev/terraform.tfstate"
    region = "us-east-1"
  }
}
