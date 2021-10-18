#Configuring windows server

resource "aws_instance" "precious-workspace-webserver" {
  ami                         = "ami-0e9c222e1a75c8738"
  associate_public_ip_address = "true"
  instance_type               = "t2.medium"
  key_name                    = "keypair-precious"
  vpc_security_group_ids      = [aws_security_group.precious-workspace-SG.id]
  user_data                   = var.userdata


  tags = {
    Name  = var.name_webserver[terraform.workspace]
    env   = var.name_webserver[terraform.workspace]
    owner = "precious"
  }
}