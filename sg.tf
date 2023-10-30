locals {
  inbound_ports = [80, 443]
}



resource "aws_security_group" "open_ports" {
  name        = "instance_sg"
  description = "security group for instance"

  ingress {
    description = "allows ssh traffic"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["213.57.121.34/32"]
  }


  dynamic "ingress" {
    for_each = local.inbound_ports
    content {
      description = "allows http/s traffic"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "instane_sg"
  }
}

