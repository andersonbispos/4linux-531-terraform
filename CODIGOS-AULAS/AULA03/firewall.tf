resource "google_compute_firewall" "caixa-fw-default" {
  name    = "test-firewall"
  network = "vpc-tf-caixa"

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0", "192.168.10.0/24"]
}

resource "google_compute_firewall" "caixa-fw-allow-icmp" {
  name    = "caixa-fw-default-icmp"
  network = "vpc-tf-caixa"

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0", "192.168.10.0/24"]

  disabled = true
}

