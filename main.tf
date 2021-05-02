provider "aws" {
  region = "us-east-2"
  access_key = "demo2"
  secret_key = "demo2"
}

resource "aws_instance" "demoserver" {
  ami = "ami-0f57b4cec24530068"
  instance_type = "t2.micro"
  count = 1

  tags = {
    Name = "MydemoServer"
  }
}%                   