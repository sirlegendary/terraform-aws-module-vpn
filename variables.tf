variable "aws_region" {
  description = "AWS Region"
  default     = ""
}

variable "application_name" {
  default     = "VpnServer"
  description = "Name of the VPN being installed"
}

variable "instancetype" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ec2_username" {
  default = "ubuntu"
}

variable "public_key" {
  default = ""
}

variable "domain_name" {
  description = "FQDN that you own"
}

variable "sub_domain_name" {
  description = "Sub domain from the FQDN that you own"
}