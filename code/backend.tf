terraform {
  backend "s3" {
    region = "us-east-1"
    key    = "426857564226/papila@ec2.tfstate"
    bucket = "8586-terraform-state"
  }
}