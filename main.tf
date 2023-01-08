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
  /* user_data = <<-EOF
              #!/bin/bash
              cd /home/ubuntu
              echo "<h1>Hello, World</h1>" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF */
  tags = {
    Name = "Primeira Instância"
  }
}
