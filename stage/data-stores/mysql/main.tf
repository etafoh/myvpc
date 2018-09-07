provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket = "netbizltd-remote-state-data"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}

#--------RDS-------
resource "aws_db_instance" "example" {
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  name                = "example_database_stage"
  username            = "admin"
  password            = "${var.db_password}"
  skip_final_snapshot = true
}
