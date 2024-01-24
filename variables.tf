variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "my_public_ip" {
  type        = string
  description = "Provide Your PC's Public IP eg. 104.194.51.113/32"
}

variable "private_key_path" {
  description = "Path to the private key to be used for ssh access"
}

variable "public_key" {
  type    = string
}

variable "instance_type" {}

variable "server_name" {
  type    = string
}