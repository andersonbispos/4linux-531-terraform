resource "google_compute_network" "vpc_module" {
  name = var.vpc_name
  description = var.vpc_description

  auto_create_subnetworks = var.auto_create_subnetworks
}