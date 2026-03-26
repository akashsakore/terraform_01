variable "vpc_cidr" {
        description = "vpc_cidr"
        type = string
}
variable "public_subnet_cidr" {
        description = "public_subnet_cidr"
        type = list(string)
}

variable "availability_zone" {
	type = string
}







