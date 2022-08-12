module "vpc" {
  source = "./tf-modules/vpc/"

  vpc_name = "vpc-exemplo"
  vpc_project  = "terraform-4linux-8209"

  auto_create_subnetworks = true
}