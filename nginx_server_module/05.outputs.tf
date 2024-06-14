######### Output on Terraform ###############

# Get Public IP

output "server_output_ip" {

  description = "Public Ip Address of instancia EC2"
  value = aws_instance.nginx-server.public_ip
  
}

# Get Public DNS

output "server_output_dns" {

  description = "Public DNS aws instance EC2"
  value = aws_instance.nginx-server.public_dns
  
}
