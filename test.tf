terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

terraform {
  required_version = ">=0.13"
}


provider "aws" {
  region     = "ca-central-1"
}

resource "aws_instance" "myec2" {
   ami = "ami-0c6f9998440436fb9"
   instance_type = "t2.micro"
   key_name = "practice_instance_keypair"
   tags = {
      Name = "Apple1"
   }

}
