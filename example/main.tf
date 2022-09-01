locals {
  region = "ap-south-1"
}

module "vpn-india" {
    source = "../"
    aws_region = local.region
    public_key = ""
}