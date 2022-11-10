provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "IaC_taller_1" {
  ami = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  key_name = "upici202202"

  tags = {
    Name = "iac-taller-1-test-1"
  }
}

output "public_ip" {
  value = aws_instance.IaC_taller_1.public_ip
}