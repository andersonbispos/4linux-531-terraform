resource "google_compute_network" "vpc_workspace" {

  name = format("%s-%s", var.vpc_name, terraform.workspace)

  auto_create_subnetworks = false
}