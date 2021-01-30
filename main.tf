provider "aws" {


  profile = "default"
  region = "us-east-2"
}

terraform {
  backend "remote" {
    organization = "citi-demo-project"

    workspaces {
      name = "citi-workspace"
    }
  }
}

resource "aws_instance" "sai-inst" {
  count = 1
  ami = "ami-06abd2056542057e1"
  instance_type = "t2.micro"
}