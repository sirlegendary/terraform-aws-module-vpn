data "aws_ami" "latest-ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "template_file" "userdata" {
  template = file("${path.module}/userdata.sh")
}

resource "aws_key_pair" "machine_key" {
  key_name   = var.application_name
  public_key = var.public_key
}

resource "aws_instance" "vpnserver" {
  ami                         = data.aws_ami.latest-ubuntu.id
  instance_type               = var.instancetype
  user_data                   = data.template_file.userdata.rendered
  key_name                    = aws_key_pair.machine_key.key_name
  vpc_security_group_ids      = [aws_security_group.vpnsecuritygroup.id]
  associate_public_ip_address = true

  tags = {
    Name = var.application_name
  }
}

