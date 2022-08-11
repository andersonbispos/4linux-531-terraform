resource "google_compute_network" "vpc-tf-caixa" {
  name = "vpc-tf-caixa"

  auto_create_subnetworks = false
}

