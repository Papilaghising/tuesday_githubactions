resource "aws_instance" "ec2_instance" {
  ami                         = var.ami_id
  subnet_id                   = var.subnet_id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  key_name                    = "papila"
  tags = {
    Name      = "papila"
    silo      = "intern"
    project   = "terraform"
    terraform = true
  }
}

resource "aws_s3_bucket" "ghising" {
  bucket = "ghising"
    tags = {
    Name      = "papila"
    silo      = "intern"
    project   = "terraform"
    terraform = true 
    }
}
