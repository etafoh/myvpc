provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket = "netbizltd-remote-state-vpc-stage"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}

# ensure vpc
module "vpc" {
  source = "../../modules/terraform-aws-vpc"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  intra_subnets   = ["10.0.51.0/24", "10.0.52.0/24", "10.0.53.0/24"]

  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false

  tags = {
    Terraform   = "true"
    Environment = "stage"
  }
}
