# terraform-aws-module-vpn

```
terraform {
  backend "remote" {
    organization = "ORGANISATION"
    workspaces {
      name = "WORKSPACE NAME"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
```

### Configure the AWS Provider

```
provider "aws" {
  region = "REGION"
}
```
