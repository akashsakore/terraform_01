module "networking" {
	source = "/home/ubuntu/terraform-practice/networking"
	vpc_cidr = var.vpc_cidr
	public_subnet_cidr = var.public_subnet_cidr
	availability_zone = var.availability_zone
}
