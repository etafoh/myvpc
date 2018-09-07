provider "aws" {
  version = "~> 1.15"
  region  = "eu-west-1"
}

module "remote_state_global" {
  source = "../modules/remote_state"

  environment = "global"
}

module "remote_state_production" {
  source = "../modules/remote_state"

  environment = "production"
}

module "remote_state_stage" {
  source = "../modules/remote_state"

  environment = "stage"
}

module "remote_state_data" {
  source = "../modules/remote_state"

  environment = "data"
}

module "remote_state_vpc_stage" {
  source = "../modules/remote_state"

  environment = "vpc-stage"
}

module "remote_state_vpc_prod" {
  source = "../modules/remote_state"

  environment = "vpc-prod"
}
