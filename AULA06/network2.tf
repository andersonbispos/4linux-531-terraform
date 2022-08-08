resource "google_compute_network" "vpc-tf-caixa2" {
  name = "vpc-tf-caixa2"

  auto_create_subnetworks = false
}
