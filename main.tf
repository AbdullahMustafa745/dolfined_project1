provider "aws" {
  region  = "us-east-1"
  profile = "last-python"
}

resource "aws_instance" "web" {
  ami           = "ami-00ca32bbc84273381"
  instance_type = lookup(var.type, terraform.workspace)
  tags = {
    Name = lookup(var.tag_name, terraform.workspace)
  }
}

variable "type" {
  type = map(any)
  default = {
    stage = "t2.medium"
    dev = "t2.micro"
    prod = "t2.large"
  }

}

variable "tag_name" {
  type = map(any)
  default = {
    prod    = "prod_instance"
    dev     = "dev_instance"
    stage = "staging_instance"
  }
}