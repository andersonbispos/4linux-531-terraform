resource "google_compute_firewall" "allow-default-ports" {
  name    = "allow-default-ports"
  network = "default"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["webapps"]
}

