resource "aws_key_pair" "server_key" {
  key_name = var.key_name
  public_key = file(var.key_path)
}

resource "aws_default_vpc" "def_vpc" {
  
}

resource "aws_security_group" "my_sg" {
  name = var.sec_grp
  description = var.sec_grp_desc
  vpc_id = aws_default_vpc.def_vpc.id

  # inbound rules
  dynamic "ingress" {
    for_each = toset(var.in_ports)
    content {
      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
      cidr_blocks = [ "0.0.0.0/0" ]
    }
  }

  #outbound rules
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  tags = {
    Name = "${var.instance_name}-Security-Group"
  }

}

resource "aws_instance" "server" {
  key_name = aws_key_pair.server_key.key_name
  security_groups = [ aws_security_group.my_sg.name ]
  instance_type = var.instance_type
  ami = "ami-02b8269d5e85954ef"
  root_block_device {
    volume_size = var.vol_size
    volume_type = "gp3"
    delete_on_termination = true
    tags = {
      Name = "${var.instance_name}-Volume"
    }
  }
  tags = {
    Name = "${var.instance_name}-Server"
  }
}