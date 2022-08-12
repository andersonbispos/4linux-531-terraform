resource "google_compute_network" "vpc_module" {
  name = var.vpc_name
  description = var.vpc_description

  auto_create_subnetworks = var.auto_create_subnetworks
}

resource "google_compute_firewall" "allow_icmp_default" {
  name    = format("%s-%s", var.vpc_name, "allow-icmp-default")

  network = google_compute_network.vpc_module.self_link

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}