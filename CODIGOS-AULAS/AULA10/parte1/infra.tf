module "vpc" {
    source = "./tf-modules/rede/"

    vpc_name = "vpc-exemplo"
    auto_create_subnetworks = true
}

module "vm" {
  source = "./tf-modules/instancia/"

  vm_zone = "us-central1-a"
  vm_network = module.vpc.vpc_self_link
}