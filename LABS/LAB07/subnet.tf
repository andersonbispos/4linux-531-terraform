resource "google_compute_subnetwork" "wrkspc_subnet" {

  name = format("%s-%s", var.vpc_name, terraform.workspace)

  ip_cidr_range = "192.168.10.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_workspace.self_link
}