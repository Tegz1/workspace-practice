#Configuring security group
resource "aws_security_group" "precious-workspace-SG" {
  name        = var.security_group[terraform.workspace]
  description = "precious-workspace-SG to allow internet access"

  #Inbound rule
  ingress {
    description = "inbound rule on port 80"
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }
  #Outbound rule
  egress {
    description      = "outbound rule"
    from_port        = 0
    protocol         = -1
    to_port          = 0
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = []
    security_groups  = []

  }

  tags = {
    Name  = "precious-workspace-SG"
    env   = var.name_webserver[terraform.workspace]
    owner = "precious"
  }
}