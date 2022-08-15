resource "google_compute_firewall" "allow-default-ports" {

  name = format("%s-%s", var.vpc_name, "allow-default-ports")

  network = module.network.network_self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]
}