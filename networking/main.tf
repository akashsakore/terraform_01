provider "aws" {
	region = "us-east-1"
}


variable "vpc_cidr" {}
variable "public_subnet_cidr" {}
variable "availability_zone" {}

resource "aws_vpc" "new_vpc" {
	cidr_block = var.vpc_cidr
}

resource "aws_subnet" "public_subnet" {
	count = length(var.public_subnet_cidr)
	vpc_id = aws_vpc.new_vpc.id
	cidr_block = element(var.public_subnet_cidr, count.index)
	availability_zone = var.availability_zone
}


