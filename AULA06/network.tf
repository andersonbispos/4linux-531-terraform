resource "google_compute_network" "vpc-tf-caixa" {
  name = var.vpc_name

  auto_create_subnetworks = var.rede_gerenciada
}

