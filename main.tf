# launch first instance in aws web service
# Basic Terraform
# add tags on aws instance, SG,KEY
#working with output on terraform
# working variable on terraform
#working file on terraform
### this main is not used in this case.check
# File Created.chec"

# Declarate Module

######## Module ############
module "nginx_server_dev" {

    source = "./nginx_server_module"

    ami_id = "ami-00beae93a2d981137"
    instance_type = "t2.micro"
    server_name = "nginx-server-dev"
    environment = "dev"
  
}


######### Output on Terraform ###############

# Get Public IP

output "nginx_dev_ip" {

  description = "Public Ip Address of instancia EC2"
  value = module.nginx_server_dev.server_output_ip
  
}

# Get Public DNS

output "nginx_dev_dns" {

  description = "Public DNS aws instance EC2"
  value = module.nginx_server_dev.server_output_dns
  
}
