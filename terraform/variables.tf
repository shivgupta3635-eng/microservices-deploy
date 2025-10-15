variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "instance_count" {
  type    = number
  default = 3
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ami_id" {
  type    = string
  description = "Ubuntu 22.04 AMI id for the chosen region"
}

variable "key_name" {
  type = string
}

variable "public_key_path" {
  type = string
}

variable "ssh_user" {
  type = string
  default = "ubuntu"
}

variable "my_ip_cidr" {
  type = string
  default = "0.0.0.0/0"
}
