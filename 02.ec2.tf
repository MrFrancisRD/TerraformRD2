####  Resource ######

resource "aws_instance" "nginx-server" {
  ami           = var.ami_id
  instance_type = var.instance_type

###### Installing nginx in aws machine ##########
  user_data = <<-EOF
              #!/bin/bash
              sudo yum install -y nginx
              sudo systemctl enable nginx
              sudo systemctl start nginx
              EOF

  # link resource to ssh since my EC2 Instance
  key_name = aws_key_pair.nginx-server-ssh.key_name

  # link SG resource

  vpc_security_group_ids = [ aws_security_group.nginx-server-sg.id ]

  # adding tags aws EC2 Instance
  tags = {
    Name = var.server_name
    Environment = var.environment
    Owner = "myemployeess@mysoftwareRD.com"
    Team = "Devops"
    Project = "Webinar-Caosbinario-Terraform"
  }
}