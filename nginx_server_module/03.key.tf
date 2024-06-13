#adding ssh key to my EC2 Instance

resource "aws_key_pair" "nginx-server-ssh" {
  key_name = "${var.server_name}-ssh"
  public_key = file("${var.server_name}.key.pub")

   # adding tags ssh key pair
  tags = {
    Name = "${var.server_name}-ssh"
    Environment = "dev"
    Owner = "myemployeess@mysoftwareRD.com"
    Team = "Devops"
    Project = "Webinar-Caosbinario-Terraform"
  }
  
}
