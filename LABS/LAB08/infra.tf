module "vpc" {
  source = "./tf-modules/vpc/"

  vpc_name    = "vpc-exemplo"
  vpc_project = "terraform-4linux-8209"

  auto_create_subnetworks = true
}

module "vm" {
  source = "./tf-modules/vm_instance/"

  vm_network = module.vpc.vpc_self_link
  vm_subnet  = module.vpc.vpc_name
}