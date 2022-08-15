module "vm" {
  source = "github.com/andersonbispos/tf-gcp-modules.git/vm_instance"

  vm_zone = "us-central1-a"

  vm_network = module.network.network_self_link
  vm_subnet  = module.network.network_name
}