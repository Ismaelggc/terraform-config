terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                      = "eu-west-1"
  access_key                  = "test"
  secret_key                  = "test"
  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true

  endpoints {
    s3 = "http://localhost:4566"
    ec2 = "http://localhost:4566"
  }
}

resource "aws_s3_bucket" "mi_bucket" {
  bucket = "bucket-terraform"
}

resource "aws_instance" "mi_instance" {
  ami           = "ami-08ca3fed11864d6bb"
  instance_type = "t2.small"

  tags= {
    Name= "instance-terraform"
  }
}

module "mi_bucket" {
  source = "./modules/mi-recurso"

  bucket_name = "bucket-modulo"
}