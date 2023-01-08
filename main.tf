terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0530ca8899fac469f"
  instance_type = "t1.micro"
  key_name = "iac-rafael-mac" #create the key name in aws

  tags = {
    Name = "Primeira Instância"
  }
}
