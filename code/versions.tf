terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.6" # which means any version equal & 
    }
  }
  required_version = ">= 0.13"
}