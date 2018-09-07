terraform {
  required_version = ">= 0.8, < 0.12"
}

resource "aws_s3_bucket" "remote_state" {
  bucket = "${var.prefix}-remote-state-${var.environment}"

  #versioning {
  #  enabled = true
  #}

  tags {
    Name        = "${var.prefix}-remote-state-${var.environment}"
    Environment = "${var.environment}"
  }

  #lifecycle {
  #  prevent_destroy = true
  #}
}
