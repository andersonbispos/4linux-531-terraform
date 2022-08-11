resource "google_compute_firewall" "allow-default-ports" {
  name = "allow-default-ports"

  network = google_compute_network.vpc_tf_projeto.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["appserver"]
}