# launch first instance in aws web service
# Basic Terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.53.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {

 # profile = "default"
  region  = "us-east-1"
}

####  Resource ######

resource "aws_instance" "nginx-server" {
  ami           = "ami-00beae93a2d981137"
  instance_type = "t2.micro"

}