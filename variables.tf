variable "region" {
 description = "default region"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "subnet_id" {
  description = "The VPC subnet in which the instance will be created "
}

variable "ami_id" {
  description = "The AMI to use"
}

