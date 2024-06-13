############ SG (Security Group) ##########

resource "aws_security_group" "nginx-server-sg" {

  name = "${var.server_name}-sg"
  description = "Security group allowing SSH and HTTP access"

   ingress {
    from_port   = 22 #accept all port in
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port        = 0 # accept all port out
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

# adding tags out aws SG
tags = {
    Name = "${var.server_name}-sg"
    Environment = "dev"
    Owner = "myemployeess@mysoftwareRD.com"
    Team = "Devops"
    Project = "Webinar-Caosbinario-Terraform"
  }
  
}