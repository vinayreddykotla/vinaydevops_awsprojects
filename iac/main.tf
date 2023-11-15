terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }


}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
terraform {
  backend "s3" {
    bucket = "vin-dev-project"
    key    = "projects_statefile/terraform.state"
    region = "us-east-1"
  }
}

resource "aws_instance" "vinaydevops_jenkins" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = ["sg-0b619531d4da9d56a"]
  iam_instance_profile   = var.iam_instance_profile
  user_data              = file("jenkins.sh")

  tags = {
    Name      = "vinaydevops_Jenkins"
    CreatedBy = "Terraform"
  }
}
