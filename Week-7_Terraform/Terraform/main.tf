terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "example" {
  ami = "ami-07eef52105e8a2059"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}