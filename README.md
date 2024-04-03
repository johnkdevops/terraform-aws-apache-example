Terraform Module to provision an EC2 Instance that is running Apache.

Not for production use. Just showcasing how to create a public module on Terraform Registry

main.tf
```hcl
terraform {

}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

module "apache" {
  source = ".//terraform-aws-apache-example"
  vpc_id = "Enter Your VPC id"
  my_public_ip = "MY_OWN_IP_ADDRESS/32"
  public_key = "Enter your public key"
  private_key_path = "Enter your private key"
  instance_type = "Enter your ec2 instance type"
  server_name = "Enter name of your ec2 instance"
}
```
outputs.tf
```hcl
output "public_ip" {
  value     = module.apache.public_ip
}
```
