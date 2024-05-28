resource "aws_instance" "ec2_instance" {
  ami                         = var.ami_id
  subnet_id                   = var.subnet_id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  key_name                    = "papila"
  vpc_security_group_ids = [aws_security_group.papila.id]
  tags = {
    Name      = "papila"
    silo      = "intern"
    project   = "terraform"
    terraform = true
  }

}
resource "aws_security_group" "papila" {
  name        = "example-security-group"
  description = "Example security group for EC2 instance"
  vpc_id = "vpc-03e4b7c0dc5b1e678"

  # Ingress rule for SSH access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Egress rule allowing all outbound traffic
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"  # All protocols
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

resource "aws_s3_bucket" "papila" {
  bucket = "papila"
    tags = {
    Name      = "papila"
    silo      = "intern"
    project   = "terraform"
    terraform = true 
    }
}
resource "aws_s3_bucket_acl" "papila" {
  bucket = aws_s3_bucket.papila.id
  acl    = "private"
}