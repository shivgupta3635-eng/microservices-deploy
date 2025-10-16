<<<<<<< HEAD
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
=======
# AWS region where instances will be created
variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region to deploy instances"
}

# Number of EC2 instances to launch
variable "instance_count" {
  type        = number
  default     = 3
  description = "Number of EC2 instances to create"
}

# EC2 instance type
variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Type of EC2 instance (free tier eligible)"
}

# Ubuntu 22.04 AMI ID for the selected region
variable "ami_id" {
  type        = string
  description = "Ubuntu 22.04 AMI ID for the chosen region"
}

# AWS key pair name
variable "key_name" {
  type        = string
  description = "Name of the AWS key pair for SSH access"
}

# Path to the public key corresponding to the key pair
variable "public_key_path" {
  type        = string
  description = "Local path to the public key (.pub) file"
}

# Default SSH username for Ubuntu AMIs
variable "ssh_user" {
  type        = string
  default     = "ubuntu"
  description = "SSH user for the EC2 instances"
}

# CIDR to allow inbound SSH access
variable "my_ip_cidr" {
  type        = string
  default     = "0.0.0.0/0"
  description = "IP range allowed to SSH into the instances (default allows all)"
>>>>>>> 5a9f615 (variable)
}
