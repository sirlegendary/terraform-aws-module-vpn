locals {
  region = ""
}

module "vpn-region" {
    source = "../"
    aws_region = local.region
    public_key = ""
    domain_name = ""
    sub_domain_name = ""
    application_name = ""
}