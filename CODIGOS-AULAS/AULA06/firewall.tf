resource "google_compute_firewall" "caixa-fw-default" {
  name    = "test-firewall"
  network = google_compute_network.vpc-tf-caixa.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]
  
  target_tags   = ["web"]
}

