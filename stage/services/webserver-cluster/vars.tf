variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket used for the database's remote state storage"
  default     = "netbizltd-remote-state-data"
}

variable "db_remote_state_key" {
  description = "The name of the key in the S3 bucket used for the database's remote state storage"
  default     = "terraform.tfstate"
}

variable "vpc_remote_state_bucket" {
  description = "The name of the S3 bucket used for the vpc's remote state storage"
  default     = "netbizltd-remote-state-vpc-stage"
}

variable "vpc_remote_state_key" {
  description = "The name of the key in the S3 bucket used for the vpc's remote state storage"
  default     = "terraform.tfstate"
}
