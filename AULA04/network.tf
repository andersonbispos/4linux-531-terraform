resource "google_compute_network" "vpc_tf_caixa_net1" {
  name = "vpc-tf-caixa"

  auto_create_subnetworks = false
}

