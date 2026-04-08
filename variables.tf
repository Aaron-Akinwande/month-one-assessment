variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-north-1"
}

variable "my_ip" {
  description = "Your IP address for SSH access"
  type        = string
}

variable "key_name" {
  description = "AWS key pair name"
  type        = string
}

variable "instance_type_web" {
  description = "Instance type for web servers"
  type        = string
  default     = "t3.micro"
}

variable "instance_type_db" {
  description = "Instance type for database server"
  type        = string
  default     = "t3.small"
}

variable "instance_type_bastion" {
  description = "Instance type for bastion host"
  type        = string
  default     = "t3.micro"
}
