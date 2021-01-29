provider "aws" {


  profile = "default"
  region = "us-east-2"
}

resource "aws_instance" "sai-inst" {
  ami = "ami-06abd2056542057e1"
  instance_type = "t2.micro"
}