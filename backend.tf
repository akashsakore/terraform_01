terraform {
  backend "s3" {
    bucket = "terraform-s3bucket-2603" 
    key    = "akash/terraform.tfstate"
    region = "us-east-1"
  }
}
