resource "aws_instance" "example_server" {
  ami           = "ami-06dd92ecc74fdfb36"
  instance_type = "t2.micro"

  tags = {
    Name = "terraformtest"
  }
}

