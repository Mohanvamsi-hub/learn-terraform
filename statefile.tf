terraform {
  backend "s3" {
    bucket = "devops-b72-id1"
    key    = "roboshop/dev/statefile"
    region = "us-east-1"
  }
}
