variable "ami_id" {

  description = "ID Of ami EC2"
  default = "ami-00beae93a2d981137"
}

variable "instance_type" {
  
  description = "Instance Type EC2"
  default = "t2.micro"
}

variable "server_name" {

  description = "Name of server EC2 instance"
  default = "nginx-server"
  
}

variable "environment" {
  
  description = "Enviroment of EC2 instance"
  default = "dev"
  
}